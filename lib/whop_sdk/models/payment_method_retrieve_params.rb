# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PaymentMethods#retrieve
    class PaymentMethodRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The unique identifier of the company. Provide either this or member_id, not
      #   both. Omit both to address your own saved payment methods.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute member_id
      #   The unique identifier of the member. Provide either this or account_id, not
      #   both. Omit both to address your own saved payment methods.
      #
      #   @return [String, nil]
      optional :member_id, String

      # @!method initialize(id:, account_id: nil, member_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentMethodRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param account_id [String] The unique identifier of the company. Provide either this or member_id, not both
      #
      #   @param member_id [String] The unique identifier of the member. Provide either this or account_id, not both
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
