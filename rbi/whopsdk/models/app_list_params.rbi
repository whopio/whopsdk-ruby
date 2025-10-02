# typed: strong

module Whopsdk
  module Models
    class AppListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::AppListParams, Whopsdk::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The ID of the company to filter apps by
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # The direction of the sort.
      sig { returns(T.nilable(Whopsdk::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The order to fetch the apps in for discovery.
      sig { returns(T.nilable(Whopsdk::AppListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The query to search for apps by name.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # If true, you will only get apps that are verified by Whop. Use this to populate
      # a 'featured apps' section on the app store.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :verified_apps_only

      # The different types of an app view
      sig { returns(T.nilable(Whopsdk::AppListParams::ViewType::OrSymbol)) }
      attr_accessor :view_type

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::AppListParams::Order::OrSymbol),
          query: T.nilable(String),
          verified_apps_only: T.nilable(T::Boolean),
          view_type: T.nilable(Whopsdk::AppListParams::ViewType::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
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
            before: T.nilable(String),
            company_id: T.nilable(String),
            direction: T.nilable(Whopsdk::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(Whopsdk::AppListParams::Order::OrSymbol),
            query: T.nilable(String),
            verified_apps_only: T.nilable(T::Boolean),
            view_type: T.nilable(Whopsdk::AppListParams::ViewType::OrSymbol),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The order to fetch the apps in for discovery.
      module Order
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::AppListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISCOVERABLE_AT =
          T.let(:discoverable_at, Whopsdk::AppListParams::Order::TaggedSymbol)
        TOTAL_INSTALLS_LAST_30_DAYS =
          T.let(
            :total_installs_last_30_days,
            Whopsdk::AppListParams::Order::TaggedSymbol
          )
        TIME_SPENT =
          T.let(:time_spent, Whopsdk::AppListParams::Order::TaggedSymbol)
        TIME_SPENT_LAST_24_HOURS =
          T.let(
            :time_spent_last_24_hours,
            Whopsdk::AppListParams::Order::TaggedSymbol
          )
        DAILY_ACTIVE_USERS =
          T.let(
            :daily_active_users,
            Whopsdk::AppListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Whopsdk::AppListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The different types of an app view
      module ViewType
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::AppListParams::ViewType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HUB = T.let(:hub, Whopsdk::AppListParams::ViewType::TaggedSymbol)
        DISCOVER =
          T.let(:discover, Whopsdk::AppListParams::ViewType::TaggedSymbol)
        DASH = T.let(:dash, Whopsdk::AppListParams::ViewType::TaggedSymbol)
        DASHBOARD =
          T.let(:dashboard, Whopsdk::AppListParams::ViewType::TaggedSymbol)
        ANALYTICS =
          T.let(:analytics, Whopsdk::AppListParams::ViewType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::AppListParams::ViewType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
