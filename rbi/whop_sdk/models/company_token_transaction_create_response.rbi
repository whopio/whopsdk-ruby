# typed: strong

module WhopSDK
  module Models
    class CompanyTokenTransactionCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CompanyTokenTransactionCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the transaction
      sig { returns(String) }
      attr_accessor :id

      # The transaction amount (always positive)
      sig { returns(Float) }
      attr_accessor :amount

      # The company
      sig do
        returns(WhopSDK::Models::CompanyTokenTransactionCreateResponse::Company)
      end
      attr_reader :company

      sig do
        params(
          company:
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::Company::OrHash
        ).void
      end
      attr_writer :company

      # When the transaction was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Optional description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Optional idempotency key to prevent duplicate transactions
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # For transfers, the ID of the linked transaction
      sig { returns(T.nilable(String)) }
      attr_accessor :linked_transaction_id

      # The member
      sig do
        returns(WhopSDK::Models::CompanyTokenTransactionCreateResponse::Member)
      end
      attr_reader :member

      sig do
        params(
          member:
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::Member::OrHash
        ).void
      end
      attr_writer :member

      # The type of transaction
      sig do
        returns(
          WhopSDK::Models::CompanyTokenTransactionCreateResponse::TransactionType::TaggedSymbol
        )
      end
      attr_accessor :transaction_type

      # The user whose balance changed
      sig do
        returns(WhopSDK::Models::CompanyTokenTransactionCreateResponse::User)
      end
      attr_reader :user

      sig do
        params(
          user:
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::User::OrHash
        ).void
      end
      attr_writer :user

      # A token transaction within a company
      sig do
        params(
          id: String,
          amount: Float,
          company:
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::Company::OrHash,
          created_at: Time,
          description: T.nilable(String),
          idempotency_key: T.nilable(String),
          linked_transaction_id: T.nilable(String),
          member:
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::Member::OrHash,
          transaction_type:
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::TransactionType::OrSymbol,
          user:
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the transaction
        id:,
        # The transaction amount (always positive)
        amount:,
        # The company
        company:,
        # When the transaction was created
        created_at:,
        # Optional description
        description:,
        # Optional idempotency key to prevent duplicate transactions
        idempotency_key:,
        # For transfers, the ID of the linked transaction
        linked_transaction_id:,
        # The member
        member:,
        # The type of transaction
        transaction_type:,
        # The user whose balance changed
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            company:
              WhopSDK::Models::CompanyTokenTransactionCreateResponse::Company,
            created_at: Time,
            description: T.nilable(String),
            idempotency_key: T.nilable(String),
            linked_transaction_id: T.nilable(String),
            member:
              WhopSDK::Models::CompanyTokenTransactionCreateResponse::Member,
            transaction_type:
              WhopSDK::Models::CompanyTokenTransactionCreateResponse::TransactionType::TaggedSymbol,
            user: WhopSDK::Models::CompanyTokenTransactionCreateResponse::User
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CompanyTokenTransactionCreateResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the company
        sig { returns(String) }
        attr_accessor :id

        # The slug/route of the company on the Whop site.
        sig { returns(String) }
        attr_accessor :route

        # The written name of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the company
          id:,
          # The slug/route of the company on the Whop site.
          route:,
          # The written name of the company.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CompanyTokenTransactionCreateResponse::Member,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the member
        sig { returns(String) }
        attr_accessor :id

        # The member
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of the member
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      # The type of transaction
      module TransactionType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::CompanyTokenTransactionCreateResponse::TransactionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADD =
          T.let(
            :add,
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::TransactionType::TaggedSymbol
          )
        SUBTRACT =
          T.let(
            :subtract,
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::TransactionType::TaggedSymbol
          )
        TRANSFER =
          T.let(
            :transfer,
            WhopSDK::Models::CompanyTokenTransactionCreateResponse::TransactionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::CompanyTokenTransactionCreateResponse::TransactionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CompanyTokenTransactionCreateResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user whose balance changed
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
