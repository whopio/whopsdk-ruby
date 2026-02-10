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

      # The token amount for this transaction. Always a positive value regardless of
      # transaction type.
      sig { returns(Float) }
      attr_accessor :amount

      # The company whose token balance this transaction affects.
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

      # Free-text description explaining the reason for this token transaction. Null if
      # no description was provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # A unique key used to prevent duplicate transactions when retrying API requests.
      # Null if no idempotency key was provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # The ID of the corresponding transaction on the other side of a transfer. Null if
      # this is not a transfer transaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :linked_transaction_id

      # The member whose token balance was affected by this transaction.
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

      # The direction of this token transaction (add, subtract, or transfer).
      sig { returns(WhopSDK::BotTokenTransactionTypes::TaggedSymbol) }
      attr_accessor :transaction_type

      # The user whose token balance was affected by this transaction.
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

      # A token transaction records a credit or debit to a member's token balance within
      # a company, including transfers between members.
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
        # The token amount for this transaction. Always a positive value regardless of
        # transaction type.
        amount:,
        # The company whose token balance this transaction affects.
        company:,
        # The datetime the company token transaction was created.
        created_at:,
        # Free-text description explaining the reason for this token transaction. Null if
        # no description was provided.
        description:,
        # A unique key used to prevent duplicate transactions when retrying API requests.
        # Null if no idempotency key was provided.
        idempotency_key:,
        # The ID of the corresponding transaction on the other side of a transfer. Null if
        # this is not a transfer transaction.
        linked_transaction_id:,
        # The member whose token balance was affected by this transaction.
        member:,
        # The direction of this token transaction (add, subtract, or transfer).
        transaction_type:,
        # The user whose token balance was affected by this transaction.
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

        # The company whose token balance this transaction affects.
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

        # The member whose token balance was affected by this transaction.
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

        # The user whose token balance was affected by this transaction.
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
