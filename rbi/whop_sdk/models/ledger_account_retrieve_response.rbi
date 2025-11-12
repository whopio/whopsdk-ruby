# typed: strong

module WhopSDK
  module Models
    class LedgerAccountRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::LedgerAccountRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the LedgerAccount.
      sig { returns(String) }
      attr_accessor :id

      # The balances associated with the account.
      sig do
        returns(
          T::Array[WhopSDK::Models::LedgerAccountRetrieveResponse::Balance]
        )
      end
      attr_accessor :balances

      # The different statuses a LedgerAccountAudit can be
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :ledger_account_audit_status

      # The type of ledger account.
      sig do
        returns(
          WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
        )
      end
      attr_accessor :ledger_type

      # The owner of the ledger account.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Variants
          )
        )
      end
      attr_accessor :owner

      # The different approval statuses an account can have.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
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
              WhopSDK::Models::LedgerAccountRetrieveResponse::Balance::OrHash
            ],
          ledger_account_audit_status:
            T.nilable(
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::OrSymbol
            ),
          ledger_type:
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::OrSymbol,
          owner:
            T.nilable(
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User::OrHash,
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company::OrHash
              )
            ),
          payments_approval_status:
            T.nilable(
              WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::OrSymbol
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
              T::Array[WhopSDK::Models::LedgerAccountRetrieveResponse::Balance],
            ledger_account_audit_status:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
              ),
            ledger_type:
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol,
            owner:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Variants
              ),
            payments_approval_status:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
              ),
            transfer_fee: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      class Balance < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::LedgerAccountRetrieveResponse::Balance,
              WhopSDK::Internal::AnyHash
            )
          end

        # The amount of the balance.
        sig { returns(Float) }
        attr_accessor :balance

        # The currency of the balance.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
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
            currency: WhopSDK::Currency::OrSymbol,
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
              currency: WhopSDK::Currency::TaggedSymbol,
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
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        PENDING_AI_REVIEW =
          T.let(
            :pending_ai_review,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        RESERVES_IMPOSED =
          T.let(
            :reserves_imposed,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        SUSPENDED =
          T.let(
            :suspended,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        IGNORED =
          T.let(
            :ignored,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        REQUESTED_MORE_INFORMATION =
          T.let(
            :requested_more_information,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        INFORMATION_SUBMITTED =
          T.let(
            :information_submitted,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        REQUESTED_TOS_VIOLATION_CORRECTION =
          T.let(
            :requested_tos_violation_correction,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        CLAWBACK_ATTEMPTED =
          T.let(
            :clawback_attempted,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )
        AWAITING_SALES_REVIEW =
          T.let(
            :awaiting_sales_review,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of ledger account.
      module LedgerType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIMARY =
          T.let(
            :primary,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
          )
        POOL =
          T.let(
            :pool,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The owner of the ledger account.
      module Owner
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.nilable(
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User,
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company
              )
            )
          end

        class User < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User,
                WhopSDK::Internal::AnyHash
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

        class Company < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company,
                WhopSDK::Internal::AnyHash
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
              WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # The different approval statuses an account can have.
      module PaymentsApprovalStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        MONITORING =
          T.let(
            :monitoring,
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
