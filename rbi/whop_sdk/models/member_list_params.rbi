# typed: strong

module WhopSDK
  module Models
    class MemberListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MemberListParams, WhopSDK::Internal::AnyHash)
        end

      # Filter by what the member can reach on the account.
      sig do
        returns(T.nilable(WhopSDK::MemberListParams::AccessLevel::OrSymbol))
      end
      attr_reader :access_level

      sig do
        params(
          access_level: WhopSDK::MemberListParams::AccessLevel::OrSymbol
        ).void
      end
      attr_writer :access_level

      # The account to list members for (`biz_` tag). Defaults to the account the
      # credential acts as.
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

      # Only members who joined after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only members who joined before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # Sort direction.
      sig { returns(T.nilable(WhopSDK::MemberListParams::Direction::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: WhopSDK::MemberListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # Number of members to return from the start of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of members to return from the end of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Sort field.
      sig { returns(T.nilable(WhopSDK::MemberListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::MemberListParams::Order::OrSymbol).void }
      attr_writer :order

      # Search members by name or username. An exact email address also matches when the
      # credential holds the member:email:read scope.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Filter by whether the member is still part of the account.
      sig { returns(T.nilable(WhopSDK::MemberListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::MemberListParams::Status::OrSymbol).void }
      attr_writer :status

      # Only return members whose users match these `user_` identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_ids

      sig { params(user_ids: T::Array[String]).void }
      attr_writer :user_ids

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          access_level: WhopSDK::MemberListParams::AccessLevel::OrSymbol,
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::MemberListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::MemberListParams::Order::OrSymbol,
          query: String,
          status: WhopSDK::MemberListParams::Status::OrSymbol,
          user_ids: T::Array[String],
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by what the member can reach on the account.
        access_level: nil,
        # The account to list members for (`biz_` tag). Defaults to the account the
        # credential acts as.
        account_id: nil,
        # Cursor to paginate forwards from.
        after: nil,
        # Cursor to paginate backwards from.
        before: nil,
        # Only members who joined after this ISO 8601 timestamp.
        created_after: nil,
        # Only members who joined before this ISO 8601 timestamp.
        created_before: nil,
        # Sort direction.
        direction: nil,
        # Number of members to return from the start of the window.
        first: nil,
        # Number of members to return from the end of the window.
        last: nil,
        # Sort field.
        order: nil,
        # Search members by name or username. An exact email address also matches when the
        # credential holds the member:email:read scope.
        query: nil,
        # Filter by whether the member is still part of the account.
        status: nil,
        # Only return members whose users match these `user_` identifiers.
        user_ids: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            access_level: WhopSDK::MemberListParams::AccessLevel::OrSymbol,
            account_id: String,
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::MemberListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::MemberListParams::Order::OrSymbol,
            query: String,
            status: WhopSDK::MemberListParams::Status::OrSymbol,
            user_ids: T::Array[String],
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by what the member can reach on the account.
      module AccessLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MemberListParams::AccessLevel) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NO_ACCESS =
          T.let(
            :no_access,
            WhopSDK::MemberListParams::AccessLevel::TaggedSymbol
          )
        ADMIN =
          T.let(:admin, WhopSDK::MemberListParams::AccessLevel::TaggedSymbol)
        CUSTOMER =
          T.let(:customer, WhopSDK::MemberListParams::AccessLevel::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MemberListParams::AccessLevel::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MemberListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::MemberListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::MemberListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MemberListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort field.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MemberListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::MemberListParams::Order::TaggedSymbol)
        JOINED_AT =
          T.let(:joined_at, WhopSDK::MemberListParams::Order::TaggedSymbol)
        LAST_ACCESSED_AT =
          T.let(
            :last_accessed_at,
            WhopSDK::MemberListParams::Order::TaggedSymbol
          )
        USD_TOTAL_SPENT =
          T.let(
            :usd_total_spent,
            WhopSDK::MemberListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::MemberListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by whether the member is still part of the account.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MemberListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        JOINED = T.let(:joined, WhopSDK::MemberListParams::Status::TaggedSymbol)
        LEFT = T.let(:left, WhopSDK::MemberListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MemberListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
