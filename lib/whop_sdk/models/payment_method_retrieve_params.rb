# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PaymentMethods#retrieve
    class PaymentMethodRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company. Provide either this or member_id, not
      #   both.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute member_id
      #   The unique identifier of the member. Provide either this or company_id, not
      #   both.
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!method initialize(company_id: nil, member_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentMethodRetrieveParams} for more details.
      #
      #   @param company_id [String, nil] The unique identifier of the company. Provide either this or member_id, not both
      #
      #   @param member_id [String, nil] The unique identifier of the member. Provide either this or company_id, not both
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
