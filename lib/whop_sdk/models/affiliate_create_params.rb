# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Affiliates#create
    class AffiliateCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to create the affiliate for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute user_identifier
      #   The user identifier (username, email, user ID, or Discord ID).
      #
      #   @return [String]
      required :user_identifier, String

      # @!method initialize(company_id:, user_identifier:, request_options: {})
      #   @param company_id [String] The ID of the company to create the affiliate for.
      #
      #   @param user_identifier [String] The user identifier (username, email, user ID, or Discord ID).
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
