# typed: strong

module WhopSDK
  module Models
    class MembershipListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MembershipListParams, WhopSDK::Internal::AnyHash)
        end

      # Narrow to one account (`biz_` tag). With read access to the account this lists
      # all of its memberships; without, only the caller's own memberships in it.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Cursor to paginate forwards from.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Cursor to paginate backwards from.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only memberships created after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only memberships created before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # Sort direction.
      sig do
        returns(T.nilable(WhopSDK::MembershipListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(
          direction: WhopSDK::MembershipListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # Number of memberships to return from the start of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of memberships to return from the end of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Sort field.
      sig { returns(T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::MembershipListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter to memberships of this plan (`plan_` tag). Repeat as plan_ids[] for
      # several.
      sig { returns(T.nilable(String)) }
      attr_reader :plan_id

      sig { params(plan_id: String).void }
      attr_writer :plan_id

      # Filter to memberships of this product (`prod_` tag). Repeat as product_ids[] for
      # several.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # Filter by billing state. `canceling` matches active memberships set to cancel at
      # period end; `paused` matches memberships with payment collection paused.
      sig do
        returns(T.nilable(WhopSDK::MembershipListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: WhopSDK::MembershipListParams::Status::OrSymbol).void
      end
      attr_writer :status

      # Narrow to one user's memberships (`user_` tag, or `me` for the caller). A user
      # outside the caller's visible set returns an empty list.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::MembershipListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::MembershipListParams::Order::OrSymbol,
          plan_id: String,
          product_id: String,
          status: WhopSDK::MembershipListParams::Status::OrSymbol,
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Narrow to one account (`biz_` tag). With read access to the account this lists
        # all of its memberships; without, only the caller's own memberships in it.
        account_id: nil,
        # Cursor to paginate forwards from.
        after: nil,
        # Cursor to paginate backwards from.
        before: nil,
        # Only memberships created after this ISO 8601 timestamp.
        created_after: nil,
        # Only memberships created before this ISO 8601 timestamp.
        created_before: nil,
        # Sort direction.
        direction: nil,
        # Number of memberships to return from the start of the window.
        first: nil,
        # Number of memberships to return from the end of the window.
        last: nil,
        # Sort field.
        order: nil,
        # Filter to memberships of this plan (`plan_` tag). Repeat as plan_ids[] for
        # several.
        plan_id: nil,
        # Filter to memberships of this product (`prod_` tag). Repeat as product_ids[] for
        # several.
        product_id: nil,
        # Filter by billing state. `canceling` matches active memberships set to cancel at
        # period end; `paused` matches memberships with payment collection paused.
        status: nil,
        # Narrow to one user's memberships (`user_` tag, or `me` for the caller). A user
        # outside the caller's visible set returns an empty list.
        user_id: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::MembershipListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::MembershipListParams::Order::OrSymbol,
            plan_id: String,
            product_id: String,
            status: WhopSDK::MembershipListParams::Status::OrSymbol,
            user_id: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::MembershipListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, WhopSDK::MembershipListParams::Direction::TaggedSymbol)
        DESC =
          T.let(:desc, WhopSDK::MembershipListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MembershipListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort field.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MembershipListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::MembershipListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MembershipListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by billing state. `canceling` matches active memberships set to cancel at
      # period end; `paused` matches memberships with payment collection paused.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MembershipListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::MembershipListParams::Status::TaggedSymbol)
        TRIALING =
          T.let(:trialing, WhopSDK::MembershipListParams::Status::TaggedSymbol)
        PAST_DUE =
          T.let(:past_due, WhopSDK::MembershipListParams::Status::TaggedSymbol)
        COMPLETED =
          T.let(:completed, WhopSDK::MembershipListParams::Status::TaggedSymbol)
        CANCELED =
          T.let(:canceled, WhopSDK::MembershipListParams::Status::TaggedSymbol)
        EXPIRED =
          T.let(:expired, WhopSDK::MembershipListParams::Status::TaggedSymbol)
        CANCELING =
          T.let(:canceling, WhopSDK::MembershipListParams::Status::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::MembershipListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MembershipListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
