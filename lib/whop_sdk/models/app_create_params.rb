# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#create
    class AppCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute name
      #   The display name for the app, shown to users on the app store and product pages.
      #
      #   @return [String]
      required :name, String

      # @!attribute account_id
      #   The account to create the app for (`biz_` tag). Defaults to the account behind
      #   the presented credential.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute app_type
      #   The type of app to create. Defaults to `b2c_app`.
      #
      #   @return [Symbol, WhopSDK::Models::AppCreateParams::AppType, nil]
      optional :app_type, enum: -> { WhopSDK::AppCreateParams::AppType }

      # @!attribute base_url
      #   The base production URL where the app is hosted, such as
      #   `https://myapp.example.com`.
      #
      #   @return [String, nil]
      optional :base_url, String, nil?: true

      # @!attribute icon
      #   The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
      #   file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new
      #   direct upload.
      #
      #   @return [WhopSDK::Models::AppCreateParams::Icon, nil]
      optional :icon, -> { WhopSDK::AppCreateParams::Icon }

      # @!attribute redirect_uris
      #   The whitelisted OAuth callback URLs that users are redirected to after
      #   authorizing the app.
      #
      #   @return [Array<String>, nil]
      optional :redirect_uris, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute route
      #   The subdomain route where the app's hosted web builds are served, such as
      #   `myapp` for myapp.whop.site.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(name:, account_id: nil, app_type: nil, base_url: nil, icon: nil, redirect_uris: nil, route: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppCreateParams} for more details.
      #
      #   @param name [String] The display name for the app, shown to users on the app store and product pages.
      #
      #   @param account_id [String] The account to create the app for (`biz_` tag). Defaults to the account behind t
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppCreateParams::AppType] The type of app to create. Defaults to `b2c_app`.
      #
      #   @param base_url [String, nil] The base production URL where the app is hosted, such as `https://myapp.example.
      #
      #   @param icon [WhopSDK::Models::AppCreateParams::Icon] The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
      #
      #   @param redirect_uris [Array<String>] The whitelisted OAuth callback URLs that users are redirected to after authorizi
      #
      #   @param route [String, nil] The subdomain route where the app's hosted web builds are served, such as `myapp
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The type of app to create. Defaults to `b2c_app`.
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
    end
  end
end
