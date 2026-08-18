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
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Filter apps by the type of end-user they are built for, such as consumer or
      # business.
      sig { returns(T.nilable(WhopSDK::AppType::OrSymbol)) }
      attr_reader :app_type

      sig { params(app_type: WhopSDK::AppType::OrSymbol).void }
      attr_writer :app_type

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Filter apps to only those created by this company, starting with 'biz\_'.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # The sort direction for results. Accepted values: asc, desc.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: WhopSDK::Direction::OrSymbol).void }
      attr_writer :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort apps by. Defaults to discoverable_at descending, showing the
      # most recently published apps first.
      sig { returns(T.nilable(WhopSDK::AppListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::AppListParams::Order::OrSymbol).void }
      attr_writer :order

      # A search string to filter apps by name, such as 'chat' or 'analytics'.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Whether to only return apps that have been verified by Whop. Useful for
      # populating a featured apps section.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :verified_apps_only

      sig { params(verified_apps_only: T::Boolean).void }
      attr_writer :verified_apps_only

      # Filter apps to only those supporting a specific view type, such as 'dashboard'
      # or 'hub'.
      sig { returns(T.nilable(WhopSDK::AppViewType::OrSymbol)) }
      attr_reader :view_type

      sig { params(view_type: WhopSDK::AppViewType::OrSymbol).void }
      attr_writer :view_type

      sig do
        params(
          after: String,
          app_type: WhopSDK::AppType::OrSymbol,
          before: String,
          company_id: String,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AppListParams::Order::OrSymbol,
          query: String,
          verified_apps_only: T::Boolean,
          view_type: WhopSDK::AppViewType::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Filter apps by the type of end-user they are built for, such as consumer or
        # business.
        app_type: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter apps to only those created by this company, starting with 'biz\_'.
        company_id: nil,
        # The sort direction for results. Accepted values: asc, desc.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The field to sort apps by. Defaults to discoverable_at descending, showing the
        # most recently published apps first.
        order: nil,
        # A search string to filter apps by name, such as 'chat' or 'analytics'.
        query: nil,
        # Whether to only return apps that have been verified by Whop. Useful for
        # populating a featured apps section.
        verified_apps_only: nil,
        # Filter apps to only those supporting a specific view type, such as 'dashboard'
        # or 'hub'.
        view_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            app_type: WhopSDK::AppType::OrSymbol,
            before: String,
            company_id: String,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::AppListParams::Order::OrSymbol,
            query: String,
            verified_apps_only: T::Boolean,
            view_type: WhopSDK::AppViewType::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The field to sort apps by. Defaults to discoverable_at descending, showing the
      # most recently published apps first.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::AppListParams::Order::TaggedSymbol)
        DISCOVERABLE_AT =
          T.let(:discoverable_at, WhopSDK::AppListParams::Order::TaggedSymbol)
        TOTAL_INSTALLS_LAST_30_DAYS =
          T.let(
            :total_installs_last_30_days,
            WhopSDK::AppListParams::Order::TaggedSymbol
          )
        TOTAL_INSTALLS_LAST_7_DAYS =
          T.let(
            :total_installs_last_7_days,
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
        AI_PROMPT_COUNT =
          T.let(:ai_prompt_count, WhopSDK::AppListParams::Order::TaggedSymbol)
        TOTAL_AI_COST_USD =
          T.let(:total_ai_cost_usd, WhopSDK::AppListParams::Order::TaggedSymbol)
        TOTAL_AI_TOKENS =
          T.let(:total_ai_tokens, WhopSDK::AppListParams::Order::TaggedSymbol)
        LAST_AI_PROMPT_AT =
          T.let(:last_ai_prompt_at, WhopSDK::AppListParams::Order::TaggedSymbol)
        AI_AVERAGE_RATING =
          T.let(:ai_average_rating, WhopSDK::AppListParams::Order::TaggedSymbol)

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
