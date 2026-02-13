# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CompanyTokenTransactions#create
    class CompanyTokenTransactionCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   The positive number of tokens to transact. For example, 100.0 for 100 tokens.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company_id
      #   The unique identifier of the company to create the transaction in, starting with
      #   'biz\_'.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute destination_user_id
      #   The unique identifier of the user receiving the tokens. Required when the
      #   transaction type is 'transfer'.
      #
      #   @return [String]
      required :destination_user_id, String

      # @!attribute transaction_type
      #
      #   @return [Symbol, :subtract]
      required :transaction_type, const: :subtract

      # @!attribute user_id
      #   The unique identifier of the user whose token balance will be affected, starting
      #   with 'user\_'.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute description
      #   A human-readable description of why the transaction was created.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute idempotency_key
      #   A unique key to prevent duplicate transactions. Use a UUID or similar unique
      #   string.
      #
      #   @return [String, nil]
      optional :idempotency_key, String, nil?: true

      # @!method initialize(amount:, company_id:, destination_user_id:, user_id:, description: nil, idempotency_key: nil, transaction_type: :subtract, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyTokenTransactionCreateParams} for more details.
      #
      #   @param amount [Float] The positive number of tokens to transact. For example, 100.0 for 100 tokens.
      #
      #   @param company_id [String] The unique identifier of the company to create the transaction in, starting with
      #
      #   @param destination_user_id [String] The unique identifier of the user receiving the tokens. Required when the transa
      #
      #   @param user_id [String] The unique identifier of the user whose token balance will be affected, starting
      #
      #   @param description [String, nil] A human-readable description of why the transaction was created.
      #
      #   @param idempotency_key [String, nil] A unique key to prevent duplicate transactions. Use a UUID or similar unique str
      #
      #   @param transaction_type [Symbol, :subtract]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
