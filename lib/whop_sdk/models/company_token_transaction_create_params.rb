# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CompanyTokenTransactions#create
    class CompanyTokenTransactionCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   The positive amount of tokens
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company_id
      #   The company ID
      #
      #   @return [String]
      required :company_id, String

      # @!attribute destination_user_id
      #   Required for transfers - the user to receive tokens
      #
      #   @return [String]
      required :destination_user_id, String

      # @!attribute transaction_type
      #
      #   @return [Symbol, :subtract]
      required :transaction_type, const: :subtract

      # @!attribute user_id
      #   The user ID whose balance will change
      #
      #   @return [String]
      required :user_id, String

      # @!attribute description
      #   Optional description for the transaction
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute idempotency_key
      #   Optional key to prevent duplicate transactions
      #
      #   @return [String, nil]
      optional :idempotency_key, String, nil?: true

      # @!method initialize(amount:, company_id:, destination_user_id:, user_id:, description: nil, idempotency_key: nil, transaction_type: :subtract, request_options: {})
      #   @param amount [Float] The positive amount of tokens
      #
      #   @param company_id [String] The company ID
      #
      #   @param destination_user_id [String] Required for transfers - the user to receive tokens
      #
      #   @param user_id [String] The user ID whose balance will change
      #
      #   @param description [String, nil] Optional description for the transaction
      #
      #   @param idempotency_key [String, nil] Optional key to prevent duplicate transactions
      #
      #   @param transaction_type [Symbol, :subtract]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
