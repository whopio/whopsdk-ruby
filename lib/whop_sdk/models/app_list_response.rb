# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#list
    class AppListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   App ID, prefixed `app_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account
      #   The account that owns the app.
      #
      #   @return [WhopSDK::Models::AppListResponse::Account]
      required :account, -> { WhopSDK::Models::AppListResponse::Account }

      # @!attribute app_type
      #   The type of end-user the app is built for.
      #
      #   @return [Symbol, WhopSDK::Models::AppListResponse::AppType]
      required :app_type, enum: -> { WhopSDK::Models::AppListResponse::AppType }

      # @!attribute banner_image
      #   Banner image from the app's product listing, or `null` when none is uploaded.
      #
      #   @return [WhopSDK::Models::AppListResponse::BannerImage, nil]
      required :banner_image, -> { WhopSDK::Models::AppListResponse::BannerImage }, nil?: true

      # @!attribute base_url
      #   The production base URL where the app is hosted. `null` if no base URL is
      #   configured, if the caller lacks the `developer:basic:read` permission on the
      #   app's account, or on list responses, which never expose it.
      #
      #   @return [String, nil]
      required :base_url, String, nil?: true

      # @!attribute businesses_created_count
      #   Number of businesses created from this app as a template.
      #
      #   @return [Integer]
      required :businesses_created_count, Integer

      # @!attribute businesses_created_logo_urls
      #
      #   @return [Array<String>]
      required :businesses_created_logo_urls, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute creator
      #   The user who owns the publishing account.
      #
      #   @return [WhopSDK::Models::AppListResponse::Creator]
      required :creator, -> { WhopSDK::Models::AppListResponse::Creator }

      # @!attribute dashboard_path
      #   URL path for the account dashboard view, or `null` when not configured.
      #
      #   @return [String, nil]
      required :dashboard_path, String, nil?: true

      # @!attribute description
      #   Short description shown in listings and search results, or `null` if none has
      #   been set.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discover_path
      #   URL path for the discover view, or `null` when not configured.
      #
      #   @return [String, nil]
      required :discover_path, String, nil?: true

      # @!attribute domain_id
      #   Subdomain identifier for the app's proxied URL, forming
      #   https://{domain_id}.apps.whop.com.
      #
      #   @return [String]
      required :domain_id, String

      # @!attribute domains
      #
      #   @return [Array<WhopSDK::Models::AppListResponse::Domain>, nil]
      required :domains,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AppListResponse::Domain] },
               nil?: true

      # @!attribute experience_path
      #   URL path for the member-facing hub view, or `null` when not configured.
      #
      #   @return [String, nil]
      required :experience_path, String, nil?: true

      # @!attribute hosted_url
      #   Full URL where the app's hosted web build is served, or `null` if no route is
      #   claimed.
      #
      #   @return [String, nil]
      required :hosted_url, String, nil?: true

      # @!attribute icon
      #   The app's icon. Falls back to the default app icon when none is uploaded.
      #
      #   @return [WhopSDK::Models::AppListResponse::Icon]
      required :icon, -> { WhopSDK::Models::AppListResponse::Icon }

      # @!attribute name
      #   Display name shown on the app store and in experience navigation.
      #
      #   @return [String]
      required :name, String

      # @!attribute openapi_path
      #   URL path to the app's OpenAPI spec file, or `null` when not configured.
      #
      #   @return [String, nil]
      required :openapi_path, String, nil?: true

      # @!attribute origin
      #   Full origin URL of the app's proxied domain, for example
      #   https://ab1c2d3e4f.apps.whop.com.
      #
      #   @return [String, nil]
      required :origin, String, nil?: true

      # @!attribute previous_hosted_urls
      #
      #   @return [Array<String>]
      required :previous_hosted_urls, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute route
      #   Claimed subdomain route where hosted web builds are served (`myapp` for
      #   myapp.whop.site), or `null` if no route is claimed.
      #
      #   @return [String, nil]
      required :route, String, nil?: true

      # @!attribute skills_path
      #   URL path to the app's skills directory, or `null` when not configured.
      #
      #   @return [String, nil]
      required :skills_path, String, nil?: true

      # @!attribute status
      #   Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      #   accessible only via direct link, `hidden` is not visible anywhere.
      #
      #   @return [Symbol, WhopSDK::Models::AppListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AppListResponse::Status }

      # @!attribute verified
      #   Whether the app has been verified by Whop and is eligible for the featured apps
      #   section.
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, account:, app_type:, banner_image:, base_url:, businesses_created_count:, businesses_created_logo_urls:, creator:, dashboard_path:, description:, discover_path:, domain_id:, domains:, experience_path:, hosted_url:, icon:, name:, openapi_path:, origin:, previous_hosted_urls:, route:, skills_path:, status:, verified:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppListResponse} for more details.
      #
      #   @param id [String] App ID, prefixed `app_`.
      #
      #   @param account [WhopSDK::Models::AppListResponse::Account] The account that owns the app.
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppListResponse::AppType] The type of end-user the app is built for.
      #
      #   @param banner_image [WhopSDK::Models::AppListResponse::BannerImage, nil] Banner image from the app's product listing, or `null` when none is uploaded.
      #
      #   @param base_url [String, nil] The production base URL where the app is hosted. `null` if no base URL is config
      #
      #   @param businesses_created_count [Integer] Number of businesses created from this app as a template.
      #
      #   @param businesses_created_logo_urls [Array<String>]
      #
      #   @param creator [WhopSDK::Models::AppListResponse::Creator] The user who owns the publishing account.
      #
      #   @param dashboard_path [String, nil] URL path for the account dashboard view, or `null` when not configured.
      #
      #   @param description [String, nil] Short description shown in listings and search results, or `null` if none has be
      #
      #   @param discover_path [String, nil] URL path for the discover view, or `null` when not configured.
      #
      #   @param domain_id [String] Subdomain identifier for the app's proxied URL, forming https://{domain_id}.apps
      #
      #   @param domains [Array<WhopSDK::Models::AppListResponse::Domain>, nil]
      #
      #   @param experience_path [String, nil] URL path for the member-facing hub view, or `null` when not configured.
      #
      #   @param hosted_url [String, nil] Full URL where the app's hosted web build is served, or `null` if no route is cl
      #
      #   @param icon [WhopSDK::Models::AppListResponse::Icon] The app's icon. Falls back to the default app icon when none is uploaded.
      #
      #   @param name [String] Display name shown on the app store and in experience navigation.
      #
      #   @param openapi_path [String, nil] URL path to the app's OpenAPI spec file, or `null` when not configured.
      #
      #   @param origin [String, nil] Full origin URL of the app's proxied domain, for example https://ab1c2d3e4f.apps
      #
      #   @param previous_hosted_urls [Array<String>]
      #
      #   @param route [String, nil] Claimed subdomain route where hosted web builds are served (`myapp` for myapp.wh
      #
      #   @param skills_path [String, nil] URL path to the app's skills directory, or `null` when not configured.
      #
      #   @param status [Symbol, WhopSDK::Models::AppListResponse::Status] Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      #
      #   @param verified [Boolean] Whether the app has been verified by Whop and is eligible for the featured apps

      # @see WhopSDK::Models::AppListResponse#account
      class Account < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute logo_url
        #   Account logo image URL.
        #
        #   @return [String, nil]
        required :logo_url, String, nil?: true

        # @!attribute route
        #   Account public route identifier.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   Account display name.
        #
        #   @return [String]
        required :title, String

        # @!attribute fees
        #   Markup rates this parent charges the connected account being read, keyed by fee
        #   type (for example `crypto_deposit_markup`), each with `percentage_fee` and
        #   `fixed_fee_usd`. Resolved with the connected account's own overrides winning
        #   over the platform default.
        #
        #   @return [Hash{Symbol=>WhopSDK::Models::AppListResponse::Account::Fee}, nil]
        optional :fees, -> { WhopSDK::Internal::Type::HashOf[WhopSDK::Models::AppListResponse::Account::Fee] }

        # @!method initialize(id:, logo_url:, route:, title:, fees: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AppListResponse::Account} for more details.
        #
        #   The account that owns the app.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param logo_url [String, nil] Account logo image URL.
        #
        #   @param route [String] Account public route identifier.
        #
        #   @param title [String] Account display name.
        #
        #   @param fees [Hash{Symbol=>WhopSDK::Models::AppListResponse::Account::Fee}] Markup rates this parent charges the connected account being read, keyed by fee

        class Fee < WhopSDK::Internal::Type::BaseModel
          # @!attribute fixed_fee_usd
          #   Fixed markup in US dollars per transaction.
          #
          #   @return [Float]
          required :fixed_fee_usd, Float

          # @!attribute percentage_fee
          #   Percentage of the transaction charged as markup.
          #
          #   @return [Float]
          required :percentage_fee, Float

          # @!method initialize(fixed_fee_usd:, percentage_fee:)
          #   @param fixed_fee_usd [Float] Fixed markup in US dollars per transaction.
          #
          #   @param percentage_fee [Float] Percentage of the transaction charged as markup.
        end
      end

      # The type of end-user the app is built for.
      #
      # @see WhopSDK::Models::AppListResponse#app_type
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

      # @see WhopSDK::Models::AppListResponse#banner_image
      class BannerImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   Banner image URL, taken from the app's product listing.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   Banner image from the app's product listing, or `null` when none is uploaded.
        #
        #   @param url [String] Banner image URL, taken from the app's product listing.
      end

      # @see WhopSDK::Models::AppListResponse#creator
      class Creator < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   User ID, prefixed `user_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   Public username.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who owns the publishing account.
        #
        #   @param id [String] User ID, prefixed `user_`.
        #
        #   @param name [String, nil] Display name.
        #
        #   @param username [String] Public username.
      end

      class Domain < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Domain ID, prefixed `dom_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute domain
        #   Normalized hostname assigned to this app.
        #
        #   @return [String]
        required :domain, String

        # @!attribute status
        #   Domain lifecycle status, matching the domain resource.
        #
        #   @return [Symbol, WhopSDK::Models::AppListResponse::Domain::Status]
        required :status, enum: -> { WhopSDK::Models::AppListResponse::Domain::Status }

        # @!method initialize(id:, domain:, status:)
        #   Custom domain claims and assignments for this app, excluding removed domains.
        #   Empty when none exist; `null` when the caller lacks the account's
        #   `developer:basic:read` permission.
        #
        #   @param id [String] Domain ID, prefixed `dom_`.
        #
        #   @param domain [String] Normalized hostname assigned to this app.
        #
        #   @param status [Symbol, WhopSDK::Models::AppListResponse::Domain::Status] Domain lifecycle status, matching the domain resource.

        # Domain lifecycle status, matching the domain resource.
        #
        # @see WhopSDK::Models::AppListResponse::Domain#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          PENDING_VERIFICATION = :pending_verification
          PROVISIONING = :provisioning
          ACTIVE = :active
          ACTION_REQUIRED = :action_required
          DELETING = :deleting
          REMOVED = :removed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::AppListResponse#icon
      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   Icon image URL. Always present — the default app icon when none is uploaded.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   The app's icon. Falls back to the default app icon when none is uploaded.
        #
        #   @param url [String] Icon image URL. Always present — the default app icon when none is uploaded.
      end

      # Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      # accessible only via direct link, `hidden` is not visible anywhere.
      #
      # @see WhopSDK::Models::AppListResponse#status
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
