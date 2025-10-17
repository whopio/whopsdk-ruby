# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Transfers#create
    class TransferCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount to withdraw
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute currency
      #   The currency that is being withdrawn.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute destination_id
      #   The ID of the destination account which will receive the funds (either a User
      #   ID, Company ID, or LedgerAccount ID)
      #
      #   @return [String]
      required :destination_id, String

      # @!attribute origin_id
      #   The ID of the origin account which will send the funds (either a User ID,
      #   Company ID, or LedgerAccount ID)
      #
      #   @return [String]
      required :origin_id, String

      # @!attribute idempotence_key
      #   A unique key to ensure idempotence. Use a UUID or similar.
      #
      #   @return [String, nil]
      optional :idempotence_key, String, nil?: true

      # @!attribute notes
      #   Notes for the transfer. Maximum of 50 characters.
      #
      #   @return [String, nil]
      optional :notes, String, nil?: true

      # @!method initialize(amount:, currency:, destination_id:, origin_id:, idempotence_key: nil, notes: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TransferCreateParams} for more details.
      #
      #   @param amount [Float] The amount to withdraw
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency that is being withdrawn.
      #
      #   @param destination_id [String] The ID of the destination account which will receive the funds (either a User ID
      #
      #   @param origin_id [String] The ID of the origin account which will send the funds (either a User ID, Compan
      #
      #   @param idempotence_key [String, nil] A unique key to ensure idempotence. Use a UUID or similar.
      #
      #   @param notes [String, nil] Notes for the transfer. Maximum of 50 characters.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
