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

      # @!attribute icon
      #   The icon for the app in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::AppCreateParams::Icon, nil]
      optional :icon, -> { WhopSDK::AppCreateParams::Icon }, nil?: true

      # @!method initialize(company_id:, name:, base_url: nil, icon: nil, request_options: {})
      #   @param company_id [String] The ID of the company to create the app for
      #
      #   @param name [String] The name of the app to be created
      #
      #   @param base_url [String, nil] The base URL of the app to be created
      #
      #   @param icon [WhopSDK::Models::AppCreateParams::Icon, nil] The icon for the app in png, jpeg, or gif format
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The icon for the app in png, jpeg, or gif format
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
