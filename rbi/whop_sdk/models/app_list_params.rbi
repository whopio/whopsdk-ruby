# typed: strong

module WhopSDK
  module Models
    class AppListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AppListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # The type of end-user an app is built for
      sig { returns(T.nilable(WhopSDK::AppType::OrSymbol)) }
      attr_accessor :app_type

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The ID of the company to filter apps by
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The order to fetch the apps in for discovery.
      sig { returns(T.nilable(WhopSDK::AppListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The query to search for apps by name.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # If true, you will only get apps that are verified by Whop. Use this to populate
      # a 'featured apps' section on the app store.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :verified_apps_only

      # The different types of an app view
      sig { returns(T.nilable(WhopSDK::AppViewType::OrSymbol)) }
      attr_accessor :view_type

      sig do
        params(
          after: T.nilable(String),
          app_type: T.nilable(WhopSDK::AppType::OrSymbol),
          before: T.nilable(String),
          company_id: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::AppListParams::Order::OrSymbol),
          query: T.nilable(String),
          verified_apps_only: T.nilable(T::Boolean),
          view_type: T.nilable(WhopSDK::AppViewType::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # The type of end-user an app is built for
        app_type: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The ID of the company to filter apps by
        company_id: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The order to fetch the apps in for discovery.
        order: nil,
        # The query to search for apps by name.
        query: nil,
        # If true, you will only get apps that are verified by Whop. Use this to populate
        # a 'featured apps' section on the app store.
        verified_apps_only: nil,
        # The different types of an app view
        view_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            app_type: T.nilable(WhopSDK::AppType::OrSymbol),
            before: T.nilable(String),
            company_id: T.nilable(String),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::AppListParams::Order::OrSymbol),
            query: T.nilable(String),
            verified_apps_only: T.nilable(T::Boolean),
            view_type: T.nilable(WhopSDK::AppViewType::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The order to fetch the apps in for discovery.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISCOVERABLE_AT =
          T.let(:discoverable_at, WhopSDK::AppListParams::Order::TaggedSymbol)
        TOTAL_INSTALLS_LAST_30_DAYS =
          T.let(
            :total_installs_last_30_days,
            WhopSDK::AppListParams::Order::TaggedSymbol
          )
        TIME_SPENT =
          T.let(:time_spent, WhopSDK::AppListParams::Order::TaggedSymbol)
        TIME_SPENT_LAST_24_HOURS =
          T.let(
            :time_spent_last_24_hours,
            WhopSDK::AppListParams::Order::TaggedSymbol
          )
        DAILY_ACTIVE_USERS =
          T.let(
            :daily_active_users,
            WhopSDK::AppListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AppListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
