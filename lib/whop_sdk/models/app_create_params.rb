# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#create
    class AppCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to create the app for, starting with
      #   'biz\_'.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute name
      #   The display name for the app, shown to users on the app store and product pages.
      #
      #   @return [String]
      required :name, String

      # @!attribute base_url
      #   The base production URL where the app is hosted, such as
      #   'https://myapp.example.com'.
      #
      #   @return [String, nil]
      optional :base_url, String, nil?: true

      # @!attribute icon
      #   The icon image for the app in PNG, JPEG, or GIF format.
      #
      #   @return [WhopSDK::Models::AppCreateParams::Icon, nil]
      optional :icon, -> { WhopSDK::AppCreateParams::Icon }, nil?: true

      # @!method initialize(company_id:, name:, base_url: nil, icon: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to create the app for, starting with
      #   'biz\_'
      #
      #   @param name [String] The display name for the app, shown to users on the app store and product pages.
      #
      #   @param base_url [String, nil] The base production URL where the app is hosted, such as 'https://myapp.example.
      #
      #   @param icon [WhopSDK::Models::AppCreateParams::Icon, nil] The icon image for the app in PNG, JPEG, or GIF format.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The icon image for the app in PNG, JPEG, or GIF format.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
