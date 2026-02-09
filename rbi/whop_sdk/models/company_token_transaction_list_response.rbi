# typed: strong

module WhopSDK
  module Models
    class CompanyTokenTransactionListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CompanyTokenTransactionListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the company token transaction.
      sig { returns(String) }
      attr_accessor :id

      # The transaction amount (always positive)
      sig { returns(Float) }
      attr_accessor :amount

      # The company
      sig do
        returns(WhopSDK::Models::CompanyTokenTransactionListResponse::Company)
      end
      attr_reader :company

      sig do
        params(
          company:
            WhopSDK::Models::CompanyTokenTransactionListResponse::Company::OrHash
        ).void
      end
      attr_writer :company

      # The datetime the company token transaction was created.
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
        returns(WhopSDK::Models::CompanyTokenTransactionListResponse::Member)
      end
      attr_reader :member

      sig do
        params(
          member:
            WhopSDK::Models::CompanyTokenTransactionListResponse::Member::OrHash
        ).void
      end
      attr_writer :member

      # The type of transaction
      sig { returns(WhopSDK::BotTokenTransactionTypes::TaggedSymbol) }
      attr_accessor :transaction_type

      # The user whose balance changed
      sig do
        returns(WhopSDK::Models::CompanyTokenTransactionListResponse::User)
      end
      attr_reader :user

      sig do
        params(
          user:
            WhopSDK::Models::CompanyTokenTransactionListResponse::User::OrHash
        ).void
      end
      attr_writer :user

      # A token transaction within a company
      sig do
        params(
          id: String,
          amount: Float,
          company:
            WhopSDK::Models::CompanyTokenTransactionListResponse::Company::OrHash,
          created_at: Time,
          description: T.nilable(String),
          idempotency_key: T.nilable(String),
          linked_transaction_id: T.nilable(String),
          member:
            WhopSDK::Models::CompanyTokenTransactionListResponse::Member::OrHash,
          transaction_type: WhopSDK::BotTokenTransactionTypes::OrSymbol,
          user:
            WhopSDK::Models::CompanyTokenTransactionListResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the company token transaction.
        id:,
        # The transaction amount (always positive)
        amount:,
        # The company
        company:,
        # The datetime the company token transaction was created.
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
              WhopSDK::Models::CompanyTokenTransactionListResponse::Company,
            created_at: Time,
            description: T.nilable(String),
            idempotency_key: T.nilable(String),
            linked_transaction_id: T.nilable(String),
            member:
              WhopSDK::Models::CompanyTokenTransactionListResponse::Member,
            transaction_type: WhopSDK::BotTokenTransactionTypes::TaggedSymbol,
            user: WhopSDK::Models::CompanyTokenTransactionListResponse::User
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CompanyTokenTransactionListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
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
          # The unique identifier for the company.
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
              WhopSDK::Models::CompanyTokenTransactionListResponse::Member,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company member.
        sig { returns(String) }
        attr_accessor :id

        # The member
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company member.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CompanyTokenTransactionListResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user whose balance changed
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
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
