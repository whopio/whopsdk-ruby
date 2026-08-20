# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#create
    class PaymentCreateResponse < WhopSDK::Models::Payment
      # @!attribute client_secret
      #   The credential the buyer's surface presents to poll this payment and set its
      #   return URL. Returned when a payment created from a confirmation token is created
      #   or retrieved by a caller with the payment:charge permission. Null for payments
      #   created from a stored payment method or callers without payment:charge. It
      #   unlocks this payment and nothing else; treat it like a password for that one
      #   attempt.
      #
      #   @return [String, nil]
      required :client_secret, String, nil?: true

      # @!method initialize(client_secret:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentCreateResponse} for more details.
      #
      #   A payment represents a completed or attempted charge. Payments track the amount,
      #   status, currency, and payment method used.
      #
      #   @param client_secret [String, nil] The credential the buyer's surface presents to poll this payment and set its ret
    end
  end
end
