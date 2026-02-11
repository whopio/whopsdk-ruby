# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#update
    class AppUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute app_store_description
      #   The detailed description shown on the app store's in-depth app view page.
      #
      #   @return [String, nil]
      optional :app_store_description, String, nil?: true

      # @!attribute app_type
      #   The type of end-user an app is built for
      #
      #   @return [Symbol, WhopSDK::Models::AppType, nil]
      optional :app_type, enum: -> { WhopSDK::AppType }, nil?: true

      # @!attribute base_url
      #   The base production URL where the app is hosted, such as
      #   'https://myapp.example.com'.
      #
      #   @return [String, nil]
      optional :base_url, String, nil?: true

      # @!attribute dashboard_path
      #   The URL path for the company dashboard view of the app, such as '/dashboard'.
      #
      #   @return [String, nil]
      optional :dashboard_path, String, nil?: true

      # @!attribute description
      #   A short description of the app shown in listings and search results.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute discover_path
      #   The URL path for the discover view of the app, such as '/discover'.
      #
      #   @return [String, nil]
      optional :discover_path, String, nil?: true

      # @!attribute experience_path
      #   The URL path for the member-facing hub view of the app, such as
      #   '/experiences/[experienceId]'.
      #
      #   @return [String, nil]
      optional :experience_path, String, nil?: true

      # @!attribute icon
      #   The icon image for the app, used in listings and navigation.
      #
      #   @return [WhopSDK::Models::AppUpdateParams::Icon, nil]
      optional :icon, -> { WhopSDK::AppUpdateParams::Icon }, nil?: true

      # @!attribute name
      #   The display name for the app, shown to users on the app store and product pages.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute redirect_uris
      #   The whitelisted OAuth callback URLs that users are redirected to after
      #   authorizing the app
      #
      #   @return [Array<String>, nil]
      optional :redirect_uris, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute required_scopes
      #   The permission scopes the app will request from users when they install it.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AppUpdateParams::RequiredScope>, nil]
      optional :required_scopes,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppUpdateParams::RequiredScope] },
               nil?: true

      # @!attribute status
      #   The status of an experience interface
      #
      #   @return [Symbol, WhopSDK::Models::AppStatuses, nil]
      optional :status, enum: -> { WhopSDK::AppStatuses }, nil?: true

      # @!method initialize(app_store_description: nil, app_type: nil, base_url: nil, dashboard_path: nil, description: nil, discover_path: nil, experience_path: nil, icon: nil, name: nil, redirect_uris: nil, required_scopes: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppUpdateParams} for more details.
      #
      #   @param app_store_description [String, nil] The detailed description shown on the app store's in-depth app view page.
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppType, nil] The type of end-user an app is built for
      #
      #   @param base_url [String, nil] The base production URL where the app is hosted, such as 'https://myapp.example.
      #
      #   @param dashboard_path [String, nil] The URL path for the company dashboard view of the app, such as '/dashboard'.
      #
      #   @param description [String, nil] A short description of the app shown in listings and search results.
      #
      #   @param discover_path [String, nil] The URL path for the discover view of the app, such as '/discover'.
      #
      #   @param experience_path [String, nil] The URL path for the member-facing hub view of the app, such as '/experiences/[e
      #
      #   @param icon [WhopSDK::Models::AppUpdateParams::Icon, nil] The icon image for the app, used in listings and navigation.
      #
      #   @param name [String, nil] The display name for the app, shown to users on the app store and product pages.
      #
      #   @param redirect_uris [Array<String>, nil] The whitelisted OAuth callback URLs that users are redirected to after authorizi
      #
      #   @param required_scopes [Array<Symbol, WhopSDK::Models::AppUpdateParams::RequiredScope>, nil] The permission scopes the app will request from users when they install it.
      #
      #   @param status [Symbol, WhopSDK::Models::AppStatuses, nil] The status of an experience interface
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The icon image for the app, used in listings and navigation.
        #
        #   @param id [String] The ID of an existing file object.
      end

      # These are the scopes an app can request on behalf of a user
      module RequiredScope
        extend WhopSDK::Internal::Type::Enum

        READ_USER = :read_user

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
