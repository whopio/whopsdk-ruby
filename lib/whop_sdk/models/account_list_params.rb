# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#list
    class AccountListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute page
      #   The page number to retrieve
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute per
      #   The number of resources to return per page. There is a limit of 50 results per
      #   page.
      #
      #   @return [Integer, nil]
      optional :per, Integer

      # @!method initialize(page: nil, per: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountListParams} for more details.
      #
      #   @param page [Integer] The page number to retrieve
      #
      #   @param per [Integer] The number of resources to return per page. There is a limit of 50 results per p
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
