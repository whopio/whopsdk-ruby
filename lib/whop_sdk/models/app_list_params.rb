# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#list
    class AppListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute app_type
      #   The type of end-user an app is built for
      #
      #   @return [Symbol, WhopSDK::Models::AppType, nil]
      optional :app_type, enum: -> { WhopSDK::AppType }, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute company_id
      #   The ID of the company to filter apps by
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute order
      #   The order to fetch the apps in for discovery.
      #
      #   @return [Symbol, WhopSDK::Models::AppListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::AppListParams::Order }, nil?: true

      # @!attribute query
      #   The query to search for apps by name.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute verified_apps_only
      #   If true, you will only get apps that are verified by Whop. Use this to populate
      #   a 'featured apps' section on the app store.
      #
      #   @return [Boolean, nil]
      optional :verified_apps_only, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute view_type
      #   The different types of an app view
      #
      #   @return [Symbol, WhopSDK::Models::AppViewType, nil]
      optional :view_type, enum: -> { WhopSDK::AppViewType }, nil?: true

      # @!method initialize(after: nil, app_type: nil, before: nil, company_id: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, verified_apps_only: nil, view_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppType, nil] The type of end-user an app is built for
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String, nil] The ID of the company to filter apps by
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::AppListParams::Order, nil] The order to fetch the apps in for discovery.
      #
      #   @param query [String, nil] The query to search for apps by name.
      #
      #   @param verified_apps_only [Boolean, nil] If true, you will only get apps that are verified by Whop. Use this to populate
      #
      #   @param view_type [Symbol, WhopSDK::Models::AppViewType, nil] The different types of an app view
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The order to fetch the apps in for discovery.
      module Order
        extend WhopSDK::Internal::Type::Enum

        DISCOVERABLE_AT = :discoverable_at
        TOTAL_INSTALLS_LAST_30_DAYS = :total_installs_last_30_days
        TOTAL_INSTALLS_LAST_7_DAYS = :total_installs_last_7_days
        TIME_SPENT = :time_spent
        TIME_SPENT_LAST_24_HOURS = :time_spent_last_24_hours
        DAILY_ACTIVE_USERS = :daily_active_users

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
