# typed: strong

module Whopsdk
  module Models
    class LedgerAccountRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::LedgerAccountRetrieveResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The ID of the LedgerAccount.
      sig { returns(String) }
      attr_accessor :id

      # The balances associated with the account.
      sig do
        returns(
          T::Array[Whopsdk::Models::LedgerAccountRetrieveResponse::Balance]
        )
      end
      attr_accessor :balances

      # The different statuses a LedgerAccountAudit can be
      sig do
        returns(
          T.nilable(
            Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :ledger_account_audit_status

      # The type of ledger account.
      sig do
        returns(
          Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
        )
      end
      attr_accessor :ledger_type

      # The owner of the ledger account.
      sig do
        returns(
          T.nilable(
            Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::Variants
          )
        )
      end
      attr_accessor :owner

      # The different approval statuses an account can have.
      sig do
        returns(
          T.nilable(
            Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :payments_approval_status

      # The fee for transfers, if applicable.
      sig { returns(T.nilable(Float)) }
      attr_accessor :transfer_fee

      # Represents a LedgerAccount.
      sig do
        params(
          id: String,
          balances:
            T::Array[
              Whopsdk::Models::LedgerAccountRetrieveResponse::Balance::OrHash
            ],
          ledger_account_audit_status:
            T.nilable(
              Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::OrSymbol
            ),
          ledger_type:
            Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerType::OrSymbol,
          owner:
            T.nilable(
              T.any(
                Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::User::OrHash,
                Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::Company::OrHash
              )
            ),
          payments_approval_status:
            T.nilable(
              Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::OrSymbol
            ),
          transfer_fee: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the LedgerAccount.
        id:,
        # The balances associated with the account.
        balances:,
        # The different statuses a LedgerAccountAudit can be
        ledger_account_audit_status:,
        # The type of ledger account.
        ledger_type:,
        # The owner of the ledger account.
        owner:,
        # The different approval statuses an account can have.
        payments_approval_status:,
        # The fee for transfers, if applicable.
        transfer_fee:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balances:
              T::Array[Whopsdk::Models::LedgerAccountRetrieveResponse::Balance],
            ledger_account_audit_status:
              T.nilable(
                Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
              ),
            ledger_type:
              Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol,
            owner:
              T.nilable(
                Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::Variants
              ),
            payments_approval_status:
              T.nilable(
                Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
              ),
            transfer_fee: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      class Balance < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::LedgerAccountRetrieveResponse::Balance,
              Whopsdk::Internal::AnyHash
            )
          end

        # The amount of the balance.
        sig { returns(Float) }
        attr_accessor :balance

        # The currency of the balance.
        sig { returns(Whopsdk::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The amount of the balance that is pending.
        sig { returns(Float) }
        attr_accessor :pending_balance

        # The amount of the balance that is reserved.
        sig { returns(Float) }
        attr_accessor :reserve_balance

        # A cached balance for a LedgerAccount in respect to a currency.
        sig do
          params(
            balance: Float,
            currency: Whopsdk::Currency::OrSymbol,
            pending_balance: Float,
            reserve_balance: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount of the balance.
          balance:,
          # The currency of the balance.
          currency:,
          # The amount of the balance that is pending.
          pending_balance:,
          # The amount of the balance that is reserved.
          reserve_balance:
        )
        end

        sig do
          override.returns(
            {
              balance: Float,
              currency: Whopsdk::Currency::TaggedSymbol,
              pending_balance: Float,
              reserve_balance: Float
            }
          )
        end
        def to_hash
        end
      end

      # The different statuses a LedgerAccountAudit can be
      module LedgerAccountAuditStatus
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RESERVES_IMPOSED =
          T.let(
            :reserves_imposed,
            Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        REQUESTED_MORE_INFORMATION =
          T.let(
            :requested_more_information,
            Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of ledger account.
      module LedgerType
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIMARY =
          T.let(
            :primary,
            Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
          )
        POOL =
          T.let(
            :pool,
            Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The owner of the ledger account.
      module Owner
        extend Whopsdk::Internal::Type::Union

        Variants =
          T.type_alias do
            T.nilable(
              T.any(
                Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::User,
                Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::Company
              )
            )
          end

        class User < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::User,
                Whopsdk::Internal::AnyHash
              )
            end

          # The internal ID of the user.
          sig { returns(String) }
          attr_accessor :id

          # The name of the user from their Whop account.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # The username of the user from their Whop account.
          sig { returns(String) }
          attr_accessor :username

          # An object representing a (sanitized) user of the site.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The internal ID of the user.
            id:,
            # The name of the user from their Whop account.
            name:,
            # The username of the user from their Whop account.
            username:,
            # The typename of this object
            typename: :User
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                typename: Symbol,
                username: String
              }
            )
          end
          def to_hash
          end
        end

        class Company < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::Company,
                Whopsdk::Internal::AnyHash
              )
            end

          # The ID (tag) of the company.
          sig { returns(String) }
          attr_accessor :id

          # The slug/route of the company on the Whop site.
          sig { returns(String) }
          attr_accessor :route

          # The title of the company.
          sig { returns(String) }
          attr_accessor :title

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # An object representing a (sanitized) company.
          sig do
            params(
              id: String,
              route: String,
              title: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID (tag) of the company.
            id:,
            # The slug/route of the company on the Whop site.
            route:,
            # The title of the company.
            title:,
            # The typename of this object
            typename: :Company
          )
          end

          sig do
            override.returns(
              { id: String, route: String, title: String, typename: Symbol }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::LedgerAccountRetrieveResponse::Owner::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # The different approval statuses an account can have.
      module PaymentsApprovalStatus
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        MONITORING =
          T.let(
            :monitoring,
            Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
