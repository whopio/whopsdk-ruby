# frozen_string_literal: true

require_relative "../../test_helper"

module WhopSDK
  module Helpers
    class TestVerifyWebhook < Minitest::Test
      # The format WebhooksManager::Create issues: "ws_" + SecureRandom.hex(32).
      KEY = "ws_#{"3f2a" * 16}".freeze
      OTHER_KEY = "ws_#{"c17b" * 16}".freeze
      PAYLOAD = %({"id":"evt_123","event":"payment.succeeded","data":{"id":"pay_123"}})

      # Reproduces backend/app/services/webhooks_manager/sign_webhook.rb rather
      # than calling the library under test. Signing and verifying with the same
      # library is self-consistent and proved nothing: it agreed with itself
      # while rejecting every genuine Whop delivery.
      #
      #   payload   = "#{id}.#{timestamp}.#{body_json}"
      #   raw_sig   = OpenSSL::HMAC.digest("sha256", secret, payload)
      #   signature = Base64.strict_encode64(raw_sig)
      #   header    = "v1,#{signature}"
      def backend_signature(payload:, key:, id:, timestamp:)
        Base64.strict_encode64(
          OpenSSL::HMAC.digest("sha256", key, "#{id}.#{timestamp}.#{payload}")
        )
      end

      def signed_headers(payload: PAYLOAD, key: KEY, id: "msg_2Xa9", timestamp: Time.now.to_i)
        signature = backend_signature(payload: payload, key: key, id: id, timestamp: timestamp.to_s)

        {
          "webhook-id" => id,
          "webhook-timestamp" => timestamp.to_s,
          "webhook-signature" => "v1,#{signature}"
        }
      end

      def test_returns_the_parsed_body_for_a_valid_signature
        event = WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: signed_headers, key: KEY)

        assert_equal("evt_123", event[:id])
        assert_equal("payment.succeeded", event[:event])
        assert_equal({ id: "pay_123" }, event[:data])
      end

      def test_accepts_headers_whose_names_are_capitalized
        headers = signed_headers.transform_keys { |name| name.split("-").map(&:capitalize).join("-") }

        assert_equal("evt_123", WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: headers, key: KEY)[:id])
      end

      def test_signs_over_the_exact_bytes_of_the_body
        payload = %({"id":"evt_123","note":"a\\u00e9b","emoji":"\u{1F600}"})
        headers = signed_headers(payload: payload)

        signed_bytes = "#{headers["webhook-id"]}.#{headers["webhook-timestamp"]}.#{payload}".b
        expected = Base64.strict_encode64(OpenSSL::HMAC.digest("sha256", KEY, signed_bytes))

        assert_equal("v1,#{expected}", headers["webhook-signature"])
        assert_equal("evt_123", WhopSDK::Helpers::VerifyWebhook.unwrap(payload, headers: headers, key: KEY)[:id])
      end

      def test_uses_the_secret_verbatim_without_stripping_a_prefix
        # The backend HMACs the stored secret as-is, so a secret and that same
        # secret minus a prefix are two different keys. Stripping either one
        # would silently derive the wrong key.
        prefixed = "whsec_#{"9d4e" * 16}"
        bare = prefixed.delete_prefix("whsec_")

        assert_equal(
          "evt_123",
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: signed_headers(key: prefixed), key: prefixed)[:id]
        )
        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: signed_headers(key: prefixed), key: bare)
        end
      end

      def test_accepts_a_valid_v1_entry_in_a_multi_signature_header
        headers = signed_headers
        valid = headers["webhook-signature"]

        [
          "v1,#{"A" * 44} #{valid}",
          "#{valid} v1,#{"A" * 44}",
          "v0,#{"B" * 44} #{valid} v2,#{"C" * 44}"
        ].each do |value|
          event = WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: headers.merge("webhook-signature" => value), key: KEY)

          assert_equal("evt_123", event[:id], "expected #{value.inspect} to verify on its valid v1 entry")
        end
      end

      # The nonce-bound scheme from https://github.com/whopio/whop/pull/23394:
      # base64(HMAC(secret, "v1n.<id>.<timestamp>.<nonce>.<body>")), appended
      # after the v1 entry. That PR is closed and no deployed sender emits it —
      # WebhooksManager::SignWebhook on main writes a single "v1,<sig>" entry —
      # so the helper ignores v1n rather than verifying it. This pins that
      # ignoring it stays harmless if the scheme ever ships: the v1 entry it
      # travels beside is still the one that authenticates the delivery.
      def test_ignores_a_v1n_entry_and_verifies_the_v1_entry_beside_it
        id = "msg_2Xa9"
        timestamp = Time.now.to_i
        nonce = "nonce_zRq4"
        v1 = backend_signature(payload: PAYLOAD, key: KEY, id: id, timestamp: timestamp.to_s)
        v1n = Base64.strict_encode64(
          OpenSSL::HMAC.digest("sha256", KEY, "v1n.#{id}.#{timestamp}.#{nonce}.#{PAYLOAD}")
        )
        headers = {
          "webhook-id" => id,
          "webhook-nonce" => nonce,
          "webhook-timestamp" => timestamp.to_s,
          "webhook-signature" => "v1,#{v1} v1n,#{v1n}"
        }

        assert_equal("evt_123", WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: headers, key: KEY)[:id])
      end

      def test_rejects_a_header_carrying_only_a_v1n_entry
        id = "msg_2Xa9"
        timestamp = Time.now.to_i
        v1n = Base64.strict_encode64(
          OpenSSL::HMAC.digest("sha256", KEY, "v1n.#{id}.#{timestamp}.nonce_zRq4.#{PAYLOAD}")
        )
        headers = signed_headers(id: id, timestamp: timestamp).merge("webhook-signature" => "v1n,#{v1n}")

        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: headers, key: KEY)
        end
      end

      def test_rejects_a_tampered_payload
        tampered = PAYLOAD.sub("pay_123", "pay_456")

        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(tampered, headers: signed_headers, key: KEY)
        end
      end

      def test_rejects_a_payload_reserialized_with_the_same_content
        reserialized = JSON.pretty_generate(JSON.parse(PAYLOAD))

        refute_equal(PAYLOAD, reserialized)
        assert_equal(JSON.parse(PAYLOAD), JSON.parse(reserialized))
        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(reserialized, headers: signed_headers, key: KEY)
        end
      end

      def test_rejects_a_signature_made_with_a_different_key
        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: signed_headers(key: OTHER_KEY), key: KEY)
        end
      end

      def test_rejects_a_signature_bound_to_a_different_message_id
        headers = signed_headers(id: "msg_original").merge("webhook-id" => "msg_replaced")

        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: headers, key: KEY)
        end
      end

      def test_rejects_a_signature_bound_to_a_different_timestamp
        now = Time.now.to_i
        headers = signed_headers(timestamp: now).merge("webhook-timestamp" => (now - 60).to_s)

        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: headers, key: KEY)
        end
      end

      def test_rejects_a_timestamp_outside_the_tolerance_window
        stale = Time.now.to_i - (10 * 60)

        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: signed_headers(timestamp: stale), key: KEY)
        end
      end

      def test_rejects_each_missing_signature_header
        %w[webhook-id webhook-timestamp webhook-signature].each do |name|
          assert_raises(::StandardWebhooks::WebhookVerificationError, "expected a missing #{name} to be rejected") do
            WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: signed_headers.except(name), key: KEY)
          end
        end
      end

      def test_rejects_a_malformed_signature_header
        ["not-a-signature", "v1,", "v1,#{"A" * 44}", "v2,abc", ""].each do |value|
          headers = signed_headers.merge("webhook-signature" => value)

          assert_raises(::StandardWebhooks::WebhookVerificationError, "expected #{value.inspect} to be rejected") do
            WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: headers, key: KEY)
          end
        end
      end

      def test_rejects_an_unparsable_timestamp
        headers = signed_headers.merge("webhook-timestamp" => "not-a-timestamp")

        assert_raises(::StandardWebhooks::WebhookVerificationError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: headers, key: KEY)
        end
      end

      def test_raises_a_clear_error_when_the_key_is_missing
        [nil, ""].each do |key|
          error = assert_raises(ArgumentError) do
            WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: signed_headers, key: key)
          end

          assert_match(/without a key/, error.message)
        end
      end

      def test_raises_before_verifying_when_the_key_is_missing
        error = assert_raises(ArgumentError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: {}, key: nil)
        end

        assert_match(/without a key/, error.message)
      end

      def test_rejects_headers_that_are_not_hash_like
        assert_raises(ArgumentError) do
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: "webhook-id: msg_2Xa9", key: KEY)
        end
      end
    end
  end
end
