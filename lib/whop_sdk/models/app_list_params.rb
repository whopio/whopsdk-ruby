# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#list
    class AppListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Only return apps created by this account (`biz_` tag). With developer access to
      #   the account this includes its unlisted and hidden apps.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor; returns apps after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute app_type
      #   Filter apps by the type of end-user they are built for. Apps of type `website`
      #   are left out unless you ask for them by name.
      #
      #   @return [Symbol, WhopSDK::Models::AppListParams::AppType, nil]
      optional :app_type, enum: -> { WhopSDK::AppListParams::AppType }

      # @!attribute before
      #   A cursor; returns apps before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::AppListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::AppListParams::Direction }

      # @!attribute first
      #   The number of apps to return (default 20, max 100).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of apps to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort apps by. Defaults to discoverable_at, showing the most
      #   recently published apps first. `template_usage` ranks Whop-verified apps first,
      #   then by how many businesses created apps from each app as a template.
      #
      #   @return [Symbol, WhopSDK::Models::AppListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::AppListParams::Order }

      # @!attribute query
      #   A search string matched against app names.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute recommended
      #   Only return apps Whop recommends (or, with `false`, only those it does not),
      #   independently of verification status.
      #
      #   @return [Boolean, nil]
      optional :recommended, WhopSDK::Internal::Type::Boolean

      # @!attribute verified
      #   Only return apps whose Whop verification status matches this value. Omit this
      #   filter to include every verification status the caller can see.
      #
      #   @return [Boolean, nil]
      optional :verified, WhopSDK::Internal::Type::Boolean

      # @!attribute verified_apps_only
      #   Legacy compatibility filter. Use `verified` for field equality. `true` returns
      #   verified apps; clients pinned before `2026-08-25-2` retain the earlier public
      #   website discovery behavior.
      #
      #   @return [Boolean, nil]
      optional :verified_apps_only, WhopSDK::Internal::Type::Boolean

      # @!attribute view_type
      #   Only return apps supporting this view type, such as `dashboard` or `hub`.
      #
      #   @return [Symbol, WhopSDK::Models::AppListParams::ViewType, nil]
      optional :view_type, enum: -> { WhopSDK::AppListParams::ViewType }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, app_type: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, recommended: nil, verified: nil, verified_apps_only: nil, view_type: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppListParams} for more details.
      #
      #   @param account_id [String] Only return apps created by this account (`biz_` tag). With developer access to
      #
      #   @param after [String] A cursor; returns apps after this position.
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppListParams::AppType] Filter apps by the type of end-user they are built for. Apps of type `website` a
      #
      #   @param before [String] A cursor; returns apps before this position.
      #
      #   @param direction [Symbol, WhopSDK::Models::AppListParams::Direction] Sort direction.
      #
      #   @param first [Integer] The number of apps to return (default 20, max 100).
      #
      #   @param last [Integer] The number of apps to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::AppListParams::Order] The field to sort apps by. Defaults to discoverable_at, showing the most recentl
      #
      #   @param query [String] A search string matched against app names.
      #
      #   @param recommended [Boolean] Only return apps Whop recommends (or, with `false`, only those it does not), ind
      #
      #   @param verified [Boolean] Only return apps whose Whop verification status matches this value. Omit this fi
      #
      #   @param verified_apps_only [Boolean] Legacy compatibility filter. Use `verified` for field equality. `true` returns v
      #
      #   @param view_type [Symbol, WhopSDK::Models::AppListParams::ViewType] Only return apps supporting this view type, such as `dashboard` or `hub`.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Filter apps by the type of end-user they are built for. Apps of type `website`
      # are left out unless you ask for them by name.
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

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort apps by. Defaults to discoverable_at, showing the most
      # recently published apps first. `template_usage` ranks Whop-verified apps first,
      # then by how many businesses created apps from each app as a template.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        DISCOVERABLE_AT = :discoverable_at
        TEMPLATE_USAGE = :template_usage
        TOTAL_INSTALLS_LAST_30_DAYS = :total_installs_last_30_days
        TOTAL_INSTALLS_LAST_7_DAYS = :total_installs_last_7_days

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Only return apps supporting this view type, such as `dashboard` or `hub`.
      module ViewType
        extend WhopSDK::Internal::Type::Enum

        HUB = :hub
        DISCOVER = :discover
        DASH = :dash
        DASHBOARD = :dashboard
        ANALYTICS = :analytics
        SKILLS = :skills
        OPENAPI = :openapi

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
