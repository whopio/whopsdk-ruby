# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#update
    class AppUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute app_store_description
      #   The detailed description shown on the app store's in-depth app view page.
      #
      #   @return [String, nil]
      optional :app_store_description, String

      # @!attribute app_type
      #   The type of end-user the app is built for. Cannot be changed on an app whose
      #   type is already `website`.
      #
      #   @return [Symbol, WhopSDK::Models::AppUpdateParams::AppType, nil]
      optional :app_type, enum: -> { WhopSDK::AppUpdateParams::AppType }

      # @!attribute base_url
      #   The base production URL where the app is hosted. Set to `null` to take the app
      #   proxy offline.
      #
      #   @return [String, nil]
      optional :base_url, String, nil?: true

      # @!attribute dashboard_path
      #   The URL path for the account dashboard view.
      #
      #   @return [String, nil]
      optional :dashboard_path, String, nil?: true

      # @!attribute description
      #   A short description of the app shown in listings and search results.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute discover_path
      #   The URL path for the discover view.
      #
      #   @return [String, nil]
      optional :discover_path, String, nil?: true

      # @!attribute experience_path
      #   The URL path for the member-facing hub view, such as
      #   `/experiences/[experienceId]`.
      #
      #   @return [String, nil]
      optional :experience_path, String, nil?: true

      # @!attribute icon
      #   The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
      #   file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new
      #   direct upload.
      #
      #   @return [WhopSDK::Models::AppUpdateParams::Icon, nil]
      optional :icon, -> { WhopSDK::AppUpdateParams::Icon }

      # @!attribute name
      #   The display name for the app, shown to users on the app store and product pages.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute oauth_client_type
      #   How the app authenticates at the OAuth token endpoint.
      #
      #   @return [Symbol, WhopSDK::Models::AppUpdateParams::OAuthClientType, nil]
      optional :oauth_client_type, enum: -> { WhopSDK::AppUpdateParams::OAuthClientType }

      # @!attribute openapi_path
      #   The URL path to the app's OpenAPI spec file (requires the ai_chat capability).
      #
      #   @return [String, nil]
      optional :openapi_path, String, nil?: true

      # @!attribute production_android_build_id
      #   The app build (`abld_` tag) to serve as the Android production build, or `null`
      #   to unassign it. Same rules as `production_web_build_id`.
      #
      #   @return [String, nil]
      optional :production_android_build_id, String, nil?: true

      # @!attribute production_ios_build_id
      #   The app build (`abld_` tag) to serve as the iOS production build, or `null` to
      #   unassign it. Same rules as `production_web_build_id`.
      #
      #   @return [String, nil]
      optional :production_ios_build_id, String, nil?: true

      # @!attribute production_web_build_id
      #   The app build (`abld_` tag) to serve as the web production build, or `null` to
      #   unassign it. The build must belong to this app, target web, and be in the draft
      #   or approved status; a draft build is queued for approval and takes over once
      #   approved. Requires the `developer:manage_builds` scope.
      #
      #   @return [String, nil]
      optional :production_web_build_id, String, nil?: true

      # @!attribute redirect_uris
      #   The whitelisted OAuth callback URLs users are redirected to after authorizing
      #   the app.
      #
      #   @return [Array<String>, nil]
      optional :redirect_uris, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute required_scopes
      #   The OAuth scopes the app requests from users when they install it.
      #
      #   @return [Array<String>, nil]
      optional :required_scopes, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute route
      #   The subdomain route where the app's hosted web builds are served.
      #
      #   @return [String, nil]
      optional :route, String

      # @!attribute secrets
      #   Secrets to add or overwrite on the app, as an object of string values. Keys not
      #   included are left untouched; pass null or an empty string as the value to delete
      #   a secret. Encrypted at rest and injected into the app's hosted server runtime.
      #
      #   @return [Object, nil]
      optional :secrets, WhopSDK::Internal::Type::Unknown

      # @!attribute skills_path
      #   The URL path to the app's skills directory (requires the ai_chat capability).
      #
      #   @return [String, nil]
      optional :skills_path, String, nil?: true

      # @!attribute status
      #   Controls whether the app is published on Whop discovery or accessible only
      #   through its direct link. Publishing requires a name, icon, and description.
      #
      #   @return [Symbol, WhopSDK::Models::AppUpdateParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AppUpdateParams::Status }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(id:, app_store_description: nil, app_type: nil, base_url: nil, dashboard_path: nil, description: nil, discover_path: nil, experience_path: nil, icon: nil, name: nil, oauth_client_type: nil, openapi_path: nil, production_android_build_id: nil, production_ios_build_id: nil, production_web_build_id: nil, redirect_uris: nil, required_scopes: nil, route: nil, secrets: nil, skills_path: nil, status: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param app_store_description [String] The detailed description shown on the app store's in-depth app view page.
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppUpdateParams::AppType] The type of end-user the app is built for. Cannot be changed on an app whose typ
      #
      #   @param base_url [String, nil] The base production URL where the app is hosted. Set to `null` to take the app p
      #
      #   @param dashboard_path [String, nil] The URL path for the account dashboard view.
      #
      #   @param description [String] A short description of the app shown in listings and search results.
      #
      #   @param discover_path [String, nil] The URL path for the discover view.
      #
      #   @param experience_path [String, nil] The URL path for the member-facing hub view, such as `/experiences/[experienceId
      #
      #   @param icon [WhopSDK::Models::AppUpdateParams::Icon] The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
      #
      #   @param name [String] The display name for the app, shown to users on the app store and product pages.
      #
      #   @param oauth_client_type [Symbol, WhopSDK::Models::AppUpdateParams::OAuthClientType] How the app authenticates at the OAuth token endpoint.
      #
      #   @param openapi_path [String, nil] The URL path to the app's OpenAPI spec file (requires the ai_chat capability).
      #
      #   @param production_android_build_id [String, nil] The app build (`abld_` tag) to serve as the Android production build, or `null`
      #
      #   @param production_ios_build_id [String, nil] The app build (`abld_` tag) to serve as the iOS production build, or `null` to u
      #
      #   @param production_web_build_id [String, nil] The app build (`abld_` tag) to serve as the web production build, or `null` to u
      #
      #   @param redirect_uris [Array<String>] The whitelisted OAuth callback URLs users are redirected to after authorizing th
      #
      #   @param required_scopes [Array<String>] The OAuth scopes the app requests from users when they install it.
      #
      #   @param route [String] The subdomain route where the app's hosted web builds are served.
      #
      #   @param secrets [Object] Secrets to add or overwrite on the app, as an object of string values. Keys not
      #
      #   @param skills_path [String, nil] The URL path to the app's skills directory (requires the ai_chat capability).
      #
      #   @param status [Symbol, WhopSDK::Models::AppUpdateParams::Status] Controls whether the app is published on Whop discovery or accessible only throu
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The type of end-user the app is built for. Cannot be changed on an app whose
      # type is already `website`.
      module AppType
        extend WhopSDK::Internal::Type::Enum

        B2B_APP = :b2b_app
        B2C_APP = :b2c_app
        COMPANY_APP = :company_app
        COMPONENT = :component
        WEBSITE = :website

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The tag of an already-uploaded attachment.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute direct_upload_id
        #   The signed id of a completed direct upload.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
        #   file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new
        #   direct upload.
        #
        #   @param id [String] The tag of an already-uploaded attachment.
        #
        #   @param direct_upload_id [String] The signed id of a completed direct upload.
      end

      # How the app authenticates at the OAuth token endpoint.
      module OAuthClientType
        extend WhopSDK::Internal::Type::Enum

        PUBLIC = :public
        CONFIDENTIAL = :confidential

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls whether the app is published on Whop discovery or accessible only
      # through its direct link. Publishing requires a name, icon, and description.
      module Status
        extend WhopSDK::Internal::Type::Enum

        LIVE = :live
        UNLISTED = :unlisted
        HIDDEN = :hidden

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
