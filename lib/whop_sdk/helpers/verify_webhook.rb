# frozen_string_literal: true

require "base64"
require "json"
require "standardwebhooks"

module WhopSDK
  module Helpers
    # Verifies the Standard Webhooks signature Whop sends on every webhook
    # delivery, then parses the body.
    #
    # This is the verification half of the `client.webhooks.unwrap` the
    # Stainless-generated gem shipped through 0.0.41. Fern generates from
    # OpenAPI paths and `unwrap` was never a path, so the generated client has
    # no equivalent. It is a standalone module rather than a method on the
    # client so that nothing generated has to be patched: it depends only on
    # the standardwebhooks gem and the standard library, never on generated
    # client code, so it survives the client being replaced.
    #
    # What it does NOT do, and the Stainless version did: coerce the parsed
    # body into one of 42 typed event models. Fern generates no webhook event
    # models — `Whop_sdk::Types::WebhookEvent` is the enum of event *names* a
    # webhook subscribes to, not a payload type — so there is nothing to coerce
    # into. The parsed Hash is returned as-is.
    module VerifyWebhook
      MISSING_KEY_MESSAGE =
        "Cannot verify a webhook without a key. Pass the endpoint's signing secret as `key:`."

      # Verifies `payload` against the signature headers and returns the parsed body.
      #
      # @param payload [String] The raw, unmodified request body. Verifying a
      #   re-serialized body fails: the signature covers the exact bytes sent.
      # @param headers [Hash] The request headers. Only `webhook-id`,
      #   `webhook-timestamp` and `webhook-signature` are read, and the lookup
      #   is case-insensitive.
      # @param key [String] The endpoint's signing secret, exactly as Whop
      #   shows it — a `ws_`-prefixed string. Pass it verbatim; do not strip the
      #   prefix and do not pre-encode it.
      # @return [Hash] The parsed body, with symbol keys.
      # @raise [ArgumentError] when `key` is missing or empty.
      # @raise [StandardWebhooks::WebhookVerificationError] when a signature
      #   header is missing, the timestamp is outside the tolerance window, or
      #   no signature matches.
      def self.unwrap(payload, headers:, key:)
        raise ArgumentError, MISSING_KEY_MESSAGE if key.nil? || key.to_s.empty?

        ::StandardWebhooks::Webhook.new(hmac_key(key)).verify(payload, downcased_headers(headers))
        JSON.parse(payload, symbolize_names: true)
      end

      # Whop's backend HMACs with the *literal bytes* of the secret it issued
      # (`WebhooksManager::SignWebhook` passes `webhook.webhook_secret` straight
      # to `OpenSSL::HMAC`). `StandardWebhooks::Webhook` instead base64-decodes
      # whatever it is handed to derive its key, so handing it the secret raw
      # derives the wrong key and every genuine delivery fails to verify.
      # Encoding here cancels that decode out, leaving exactly the bytes the
      # backend signed with.
      #
      # The whole secret is encoded, prefix included, because the backend never
      # strips a prefix either. That also disarms the library's own `whsec_`
      # stripping: base64 output cannot begin with `whsec_`, since `_` is not in
      # the base64 alphabet.
      #
      # @api private
      def self.hmac_key(key)
        Base64.strict_encode64(key.to_s)
      end

      # StandardWebhooks::Webhook#verify looks its three headers up by exact
      # lowercase key, but HTTP header names are case-insensitive and a plain
      # Rack/Sinatra headers Hash arrives capitalized.
      #
      # @api private
      def self.downcased_headers(headers)
        raise ArgumentError, "headers must be a Hash-like object of header names to values" unless headers.respond_to?(:each_pair)

        headers.each_pair.with_object({}) do |(name, value), downcased|
          downcased[name.to_s.downcase] = value
        end
      end
    end
  end
end
