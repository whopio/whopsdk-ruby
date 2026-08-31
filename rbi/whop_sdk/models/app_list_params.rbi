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

      # Only return apps created by this account (`biz_` tag). With developer access to
      # the account this includes its unlisted and hidden apps.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor; returns apps after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Filter apps by the type of end-user they are built for. Apps of type `website`
      # are left out unless you ask for them by name.
      sig { returns(T.nilable(WhopSDK::AppListParams::AppType::OrSymbol)) }
      attr_reader :app_type

      sig { params(app_type: WhopSDK::AppListParams::AppType::OrSymbol).void }
      attr_writer :app_type

      # A cursor; returns apps before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Sort direction.
      sig { returns(T.nilable(WhopSDK::AppListParams::Direction::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: WhopSDK::AppListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of apps to return (default 20, max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of apps to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort apps by. Defaults to discoverable_at, showing the most
      # recently published apps first. `template_usage` ranks Whop-verified apps first,
      # then by how many businesses created apps from each app as a template.
      sig { returns(T.nilable(WhopSDK::AppListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::AppListParams::Order::OrSymbol).void }
      attr_writer :order

      # A search string matched against app names.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Only return apps Whop recommends (or, with `false`, only those it does not),
      # independently of verification status.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :recommended

      sig { params(recommended: T::Boolean).void }
      attr_writer :recommended

      # Only return apps whose Whop verification status matches this value. Omit this
      # filter to include every verification status the caller can see.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :verified

      sig { params(verified: T::Boolean).void }
      attr_writer :verified

      # Legacy compatibility filter. Use `verified` for field equality. `true` returns
      # verified apps; clients pinned before `2026-08-25-2` retain the earlier public
      # website discovery behavior.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :verified_apps_only

      sig { params(verified_apps_only: T::Boolean).void }
      attr_writer :verified_apps_only

      # Only return apps supporting this view type, such as `dashboard` or `hub`.
      sig { returns(T.nilable(WhopSDK::AppListParams::ViewType::OrSymbol)) }
      attr_reader :view_type

      sig { params(view_type: WhopSDK::AppListParams::ViewType::OrSymbol).void }
      attr_writer :view_type

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          app_type: WhopSDK::AppListParams::AppType::OrSymbol,
          before: String,
          direction: WhopSDK::AppListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AppListParams::Order::OrSymbol,
          query: String,
          recommended: T::Boolean,
          verified: T::Boolean,
          verified_apps_only: T::Boolean,
          view_type: WhopSDK::AppListParams::ViewType::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only return apps created by this account (`biz_` tag). With developer access to
        # the account this includes its unlisted and hidden apps.
        account_id: nil,
        # A cursor; returns apps after this position.
        after: nil,
        # Filter apps by the type of end-user they are built for. Apps of type `website`
        # are left out unless you ask for them by name.
        app_type: nil,
        # A cursor; returns apps before this position.
        before: nil,
        # Sort direction.
        direction: nil,
        # The number of apps to return (default 20, max 100).
        first: nil,
        # The number of apps to return from the end of the range.
        last: nil,
        # The field to sort apps by. Defaults to discoverable_at, showing the most
        # recently published apps first. `template_usage` ranks Whop-verified apps first,
        # then by how many businesses created apps from each app as a template.
        order: nil,
        # A search string matched against app names.
        query: nil,
        # Only return apps Whop recommends (or, with `false`, only those it does not),
        # independently of verification status.
        recommended: nil,
        # Only return apps whose Whop verification status matches this value. Omit this
        # filter to include every verification status the caller can see.
        verified: nil,
        # Legacy compatibility filter. Use `verified` for field equality. `true` returns
        # verified apps; clients pinned before `2026-08-25-2` retain the earlier public
        # website discovery behavior.
        verified_apps_only: nil,
        # Only return apps supporting this view type, such as `dashboard` or `hub`.
        view_type: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            app_type: WhopSDK::AppListParams::AppType::OrSymbol,
            before: String,
            direction: WhopSDK::AppListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::AppListParams::Order::OrSymbol,
            query: String,
            recommended: T::Boolean,
            verified: T::Boolean,
            verified_apps_only: T::Boolean,
            view_type: WhopSDK::AppListParams::ViewType::OrSymbol,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter apps by the type of end-user they are built for. Apps of type `website`
      # are left out unless you ask for them by name.
      module AppType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppListParams::AppType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        B2B_APP = T.let(:b2b_app, WhopSDK::AppListParams::AppType::TaggedSymbol)
        B2C_APP = T.let(:b2c_app, WhopSDK::AppListParams::AppType::TaggedSymbol)
        COMPANY_APP =
          T.let(:company_app, WhopSDK::AppListParams::AppType::TaggedSymbol)
        COMPONENT =
          T.let(:component, WhopSDK::AppListParams::AppType::TaggedSymbol)
        WEBSITE = T.let(:website, WhopSDK::AppListParams::AppType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppListParams::AppType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::AppListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::AppListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort apps by. Defaults to discoverable_at, showing the most
      # recently published apps first. `template_usage` ranks Whop-verified apps first,
      # then by how many businesses created apps from each app as a template.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::AppListParams::Order::TaggedSymbol)
        DISCOVERABLE_AT =
          T.let(:discoverable_at, WhopSDK::AppListParams::Order::TaggedSymbol)
        TEMPLATE_USAGE =
          T.let(:template_usage, WhopSDK::AppListParams::Order::TaggedSymbol)
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

        sig do
          override.returns(
            T::Array[WhopSDK::AppListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Only return apps supporting this view type, such as `dashboard` or `hub`.
      module ViewType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppListParams::ViewType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HUB = T.let(:hub, WhopSDK::AppListParams::ViewType::TaggedSymbol)
        DISCOVER =
          T.let(:discover, WhopSDK::AppListParams::ViewType::TaggedSymbol)
        DASH = T.let(:dash, WhopSDK::AppListParams::ViewType::TaggedSymbol)
        DASHBOARD =
          T.let(:dashboard, WhopSDK::AppListParams::ViewType::TaggedSymbol)
        ANALYTICS =
          T.let(:analytics, WhopSDK::AppListParams::ViewType::TaggedSymbol)
        SKILLS = T.let(:skills, WhopSDK::AppListParams::ViewType::TaggedSymbol)
        OPENAPI =
          T.let(:openapi, WhopSDK::AppListParams::ViewType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppListParams::ViewType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
