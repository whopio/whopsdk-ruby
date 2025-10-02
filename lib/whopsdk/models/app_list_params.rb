# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Apps#list
    class AppListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

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
      #   @return [Symbol, Whopsdk::Models::Direction, nil]
      optional :direction, enum: -> { Whopsdk::Direction }, nil?: true

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
      #   @return [Symbol, Whopsdk::Models::AppListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::AppListParams::Order }, nil?: true

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
      optional :verified_apps_only, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!attribute view_type
      #   The different types of an app view
      #
      #   @return [Symbol, Whopsdk::Models::AppListParams::ViewType, nil]
      optional :view_type, enum: -> { Whopsdk::AppListParams::ViewType }, nil?: true

      # @!method initialize(after: nil, before: nil, company_id: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, verified_apps_only: nil, view_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::AppListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String, nil] The ID of the company to filter apps by
      #
      #   @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, Whopsdk::Models::AppListParams::Order, nil] The order to fetch the apps in for discovery.
      #
      #   @param query [String, nil] The query to search for apps by name.
      #
      #   @param verified_apps_only [Boolean, nil] If true, you will only get apps that are verified by Whop. Use this to populate
      #
      #   @param view_type [Symbol, Whopsdk::Models::AppListParams::ViewType, nil] The different types of an app view
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The order to fetch the apps in for discovery.
      module Order
        extend Whopsdk::Internal::Type::Enum

        DISCOVERABLE_AT = :discoverable_at
        TOTAL_INSTALLS_LAST_30_DAYS = :total_installs_last_30_days
        TIME_SPENT = :time_spent
        TIME_SPENT_LAST_24_HOURS = :time_spent_last_24_hours
        DAILY_ACTIVE_USERS = :daily_active_users

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The different types of an app view
      module ViewType
        extend Whopsdk::Internal::Type::Enum

        HUB = :hub
        DISCOVER = :discover
        DASH = :dash
        DASHBOARD = :dashboard
        ANALYTICS = :analytics

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
