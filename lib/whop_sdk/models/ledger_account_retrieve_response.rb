# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::LedgerAccounts#retrieve
    class LedgerAccountRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the LedgerAccount.
      #
      #   @return [String]
      required :id, String

      # @!attribute balances
      #   The balances associated with the account.
      #
      #   @return [Array<WhopSDK::Models::LedgerAccountRetrieveResponse::Balance>]
      required :balances,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::LedgerAccountRetrieveResponse::Balance] }

      # @!attribute ledger_account_audit_status
      #   The different statuses a LedgerAccountAudit can be
      #
      #   @return [Symbol, WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus, nil]
      required :ledger_account_audit_status,
               enum: -> { WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus },
               nil?: true

      # @!attribute ledger_type
      #   The type of ledger account.
      #
      #   @return [Symbol, WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType]
      required :ledger_type, enum: -> { WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType }

      # @!attribute owner
      #   The owner of the ledger account.
      #
      #   @return [WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User, WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company, nil]
      required :owner, union: -> { WhopSDK::Models::LedgerAccountRetrieveResponse::Owner }

      # @!attribute payments_approval_status
      #   The different approval statuses an account can have.
      #
      #   @return [Symbol, WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus, nil]
      required :payments_approval_status,
               enum: -> { WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus },
               nil?: true

      # @!attribute transfer_fee
      #   The fee for transfers, if applicable.
      #
      #   @return [Float, nil]
      required :transfer_fee, Float, nil?: true

      # @!method initialize(id:, balances:, ledger_account_audit_status:, ledger_type:, owner:, payments_approval_status:, transfer_fee:)
      #   Represents a LedgerAccount.
      #
      #   @param id [String] The ID of the LedgerAccount.
      #
      #   @param balances [Array<WhopSDK::Models::LedgerAccountRetrieveResponse::Balance>] The balances associated with the account.
      #
      #   @param ledger_account_audit_status [Symbol, WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus, nil] The different statuses a LedgerAccountAudit can be
      #
      #   @param ledger_type [Symbol, WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType] The type of ledger account.
      #
      #   @param owner [WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User, WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company, nil] The owner of the ledger account.
      #
      #   @param payments_approval_status [Symbol, WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus, nil] The different approval statuses an account can have.
      #
      #   @param transfer_fee [Float, nil] The fee for transfers, if applicable.

      class Balance < WhopSDK::Internal::Type::BaseModel
        # @!attribute balance
        #   The amount of the balance.
        #
        #   @return [Float]
        required :balance, Float

        # @!attribute currency
        #   The currency of the balance.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute pending_balance
        #   The amount of the balance that is pending.
        #
        #   @return [Float]
        required :pending_balance, Float

        # @!attribute reserve_balance
        #   The amount of the balance that is reserved.
        #
        #   @return [Float]
        required :reserve_balance, Float

        # @!method initialize(balance:, currency:, pending_balance:, reserve_balance:)
        #   A cached balance for a LedgerAccount in respect to a currency.
        #
        #   @param balance [Float] The amount of the balance.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the balance.
        #
        #   @param pending_balance [Float] The amount of the balance that is pending.
        #
        #   @param reserve_balance [Float] The amount of the balance that is reserved.
      end

      # The different statuses a LedgerAccountAudit can be
      #
      # @see WhopSDK::Models::LedgerAccountRetrieveResponse#ledger_account_audit_status
      module LedgerAccountAuditStatus
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        APPROVED = :approved
        RESERVES_IMPOSED = :reserves_imposed
        SUSPENDED = :suspended
        IGNORED = :ignored
        REJECTED = :rejected
        REQUESTED_MORE_INFORMATION = :requested_more_information
        INFORMATION_SUBMITTED = :information_submitted
        REQUESTED_TOS_VIOLATION_CORRECTION = :requested_tos_violation_correction
        CLAWBACK_ATTEMPTED = :clawback_attempted
        AWAITING_SALES_REVIEW = :awaiting_sales_review

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of ledger account.
      #
      # @see WhopSDK::Models::LedgerAccountRetrieveResponse#ledger_type
      module LedgerType
        extend WhopSDK::Internal::Type::Enum

        PRIMARY = :primary
        POOL = :pool

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The owner of the ledger account.
      #
      # @see WhopSDK::Models::LedgerAccountRetrieveResponse#owner
      module Owner
        extend WhopSDK::Internal::Type::Union

        discriminator :typename

        # An object representing a (sanitized) user of the site.
        variant :User, -> { WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User }

        # An object representing a (sanitized) company.
        variant :Company, -> { WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company }

        class User < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The internal ID of the user.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   The name of the user from their Whop account.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :User]
          required :typename, const: :User

          # @!attribute username
          #   The username of the user from their Whop account.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:, typename: :User)
          #   An object representing a (sanitized) user of the site.
          #
          #   @param id [String] The internal ID of the user.
          #
          #   @param name [String, nil] The name of the user from their Whop account.
          #
          #   @param username [String] The username of the user from their Whop account.
          #
          #   @param typename [Symbol, :User] The typename of this object
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID (tag) of the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute route
          #   The slug/route of the company on the Whop site.
          #
          #   @return [String]
          required :route, String

          # @!attribute title
          #   The title of the company.
          #
          #   @return [String]
          required :title, String

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :Company]
          required :typename, const: :Company

          # @!method initialize(id:, route:, title:, typename: :Company)
          #   An object representing a (sanitized) company.
          #
          #   @param id [String] The ID (tag) of the company.
          #
          #   @param route [String] The slug/route of the company on the Whop site.
          #
          #   @param title [String] The title of the company.
          #
          #   @param typename [Symbol, :Company] The typename of this object
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User, WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company)]
      end

      # The different approval statuses an account can have.
      #
      # @see WhopSDK::Models::LedgerAccountRetrieveResponse#payments_approval_status
      module PaymentsApprovalStatus
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        APPROVED = :approved
        MONITORING = :monitoring
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
