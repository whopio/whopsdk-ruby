# frozen_string_literal: true

require_relative "../../test_helper"

module WhopSDK
  module Helpers
    class TestVerifyWebhook < Minitest::Test
      KEY = "whsec_MfKQ9r8GKYqrTwjUPD8ILPZIo2LaLaSw"
      OTHER_KEY = "whsec_C2FVsBQIhrscChlQIMV+b5sSYspob7oD"
      PAYLOAD = %({"id":"evt_123","event":"payment.succeeded","data":{"id":"pay_123"}})

      def signed_headers(payload: PAYLOAD, key: KEY, id: "msg_2Xa9", timestamp: Time.now.to_i)
        {
          "webhook-id" => id,
          "webhook-timestamp" => timestamp.to_s,
          "webhook-signature" => ::StandardWebhooks::Webhook.new(key).sign(id, timestamp.to_s, payload)
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

      def test_accepts_a_key_without_the_whsec_prefix
        bare = KEY.delete_prefix("whsec_")

        assert_equal(
          "evt_123",
          WhopSDK::Helpers::VerifyWebhook.unwrap(PAYLOAD, headers: signed_headers(key: bare), key: bare)[:id]
        )
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
