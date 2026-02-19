# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Transfers#create
    class TransferCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount to transfer in the specified currency. For example, 25.00 for $25.00
      #   USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute currency
      #   The currency of the transfer amount, such as 'usd'.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute destination_id
      #   The identifier of the account receiving the funds. Accepts a user ID
      #   ('user_xxx'), company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
      #
      #   @return [String]
      required :destination_id, String

      # @!attribute origin_id
      #   The identifier of the account sending the funds. Accepts a user ID ('user_xxx'),
      #   company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
      #
      #   @return [String]
      required :origin_id, String

      # @!attribute idempotence_key
      #   A unique key to prevent duplicate transfers. Use a UUID or similar unique
      #   string.
      #
      #   @return [String, nil]
      optional :idempotence_key, String, nil?: true

      # @!attribute metadata
      #   A JSON object of custom metadata to attach to the transfer for tracking
      #   purposes.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute notes
      #   A short note describing the transfer, up to 50 characters.
      #
      #   @return [String, nil]
      optional :notes, String, nil?: true

      # @!method initialize(amount:, currency:, destination_id:, origin_id:, idempotence_key: nil, metadata: nil, notes: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TransferCreateParams} for more details.
      #
      #   @param amount [Float] The amount to transfer in the specified currency. For example, 25.00 for $25.00
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the transfer amount, such as 'usd'.
      #
      #   @param destination_id [String] The identifier of the account receiving the funds. Accepts a user ID ('user_xxx'
      #
      #   @param origin_id [String] The identifier of the account sending the funds. Accepts a user ID ('user_xxx'),
      #
      #   @param idempotence_key [String, nil] A unique key to prevent duplicate transfers. Use a UUID or similar unique string
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] A JSON object of custom metadata to attach to the transfer for tracking purposes
      #
      #   @param notes [String, nil] A short note describing the transfer, up to 50 characters.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
