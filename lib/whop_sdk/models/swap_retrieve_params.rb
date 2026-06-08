# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#retrieve
    class SwapRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Business or user account ID (biz*\* / user*\*).
      #
      #   @return [String]
      required :account_id, String

      # @!method initialize(account_id:, request_options: {})
      #   @param account_id [String] Business or user account ID (biz*\* / user*\*).
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
