# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#create
    class AppCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to create the app for
      #
      #   @return [String]
      required :company_id, String

      # @!attribute name
      #   The name of the app to be created
      #
      #   @return [String]
      required :name, String

      # @!attribute base_url
      #   The base URL of the app to be created
      #
      #   @return [String, nil]
      optional :base_url, String, nil?: true

      # @!method initialize(company_id:, name:, base_url: nil, request_options: {})
      #   @param company_id [String] The ID of the company to create the app for
      #
      #   @param name [String] The name of the app to be created
      #
      #   @param base_url [String, nil] The base URL of the app to be created
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
