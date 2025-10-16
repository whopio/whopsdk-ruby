# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SupportChannels#create
    class SupportChannelCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to create the support chat in
      #
      #   @return [String]
      required :company_id, String

      # @!attribute user_id
      #   The ID of the user to create the support chat for
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(company_id:, user_id:, request_options: {})
      #   @param company_id [String] The ID of the company to create the support chat in
      #
      #   @param user_id [String] The ID of the user to create the support chat for
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
