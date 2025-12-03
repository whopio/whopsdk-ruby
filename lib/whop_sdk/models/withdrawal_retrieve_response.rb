# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Withdrawals#retrieve
    class WithdrawalRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Internal ID of the withdrawal request.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   How much money was attempted to be withdrawn, in a float type.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   When the withdrawal request was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the withdrawal request.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute error_code
      #   The different error codes a payout can be in.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode, nil]
      required :error_code, enum: -> { WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode }, nil?: true

      # @!attribute error_message
      #   The error message for the withdrawal, if any.
      #
      #   @return [String, nil]
      required :error_message, String, nil?: true

      # @!attribute estimated_availability
      #   The estimated availability date for the withdrawal, if any.
      #
      #   @return [Time, nil]
      required :estimated_availability, Time, nil?: true

      # @!attribute fee_amount
      #   The fee amount that was charged for the withdrawal. This is in the same currency
      #   as the withdrawal amount.
      #
      #   @return [Float]
      required :fee_amount, Float

      # @!attribute fee_type
      #   The different fee types for a withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalFeeTypes, nil]
      required :fee_type, enum: -> { WhopSDK::WithdrawalFeeTypes }, nil?: true

      # @!attribute ledger_account
      #   The ledger account associated with the withdrawal.
      #
      #   @return [WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount]
      required :ledger_account, -> { WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount }

      # @!attribute payout_token
      #   The payout token used for the withdrawal, if applicable.
      #
      #   @return [WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken, nil]
      required :payout_token, -> { WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken }, nil?: true

      # @!attribute speed
      #   The speed of the withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalSpeeds]
      required :speed, enum: -> { WhopSDK::WithdrawalSpeeds }

      # @!attribute status
      #   Status of the withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalStatus]
      required :status, enum: -> { WhopSDK::WithdrawalStatus }

      # @!attribute trace_code
      #   The trace code for the payout, if applicable. Provided on ACH transactions when
      #   available.
      #
      #   @return [String, nil]
      required :trace_code, String, nil?: true

      # @!attribute withdrawal_type
      #   The type of withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalTypes]
      required :withdrawal_type, enum: -> { WhopSDK::WithdrawalTypes }

      # @!method initialize(id:, amount:, created_at:, currency:, error_code:, error_message:, estimated_availability:, fee_amount:, fee_type:, ledger_account:, payout_token:, speed:, status:, trace_code:, withdrawal_type:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WithdrawalRetrieveResponse} for more details.
      #
      #   A withdrawal request.
      #
      #   @param id [String] Internal ID of the withdrawal request.
      #
      #   @param amount [Float] How much money was attempted to be withdrawn, in a float type.
      #
      #   @param created_at [Time] When the withdrawal request was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the withdrawal request.
      #
      #   @param error_code [Symbol, WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode, nil] The different error codes a payout can be in.
      #
      #   @param error_message [String, nil] The error message for the withdrawal, if any.
      #
      #   @param estimated_availability [Time, nil] The estimated availability date for the withdrawal, if any.
      #
      #   @param fee_amount [Float] The fee amount that was charged for the withdrawal. This is in the same currency
      #
      #   @param fee_type [Symbol, WhopSDK::Models::WithdrawalFeeTypes, nil] The different fee types for a withdrawal.
      #
      #   @param ledger_account [WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount] The ledger account associated with the withdrawal.
      #
      #   @param payout_token [WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken, nil] The payout token used for the withdrawal, if applicable.
      #
      #   @param speed [Symbol, WhopSDK::Models::WithdrawalSpeeds] The speed of the withdrawal.
      #
      #   @param status [Symbol, WhopSDK::Models::WithdrawalStatus] Status of the withdrawal.
      #
      #   @param trace_code [String, nil] The trace code for the payout, if applicable. Provided on ACH transactions when
      #
      #   @param withdrawal_type [Symbol, WhopSDK::Models::WithdrawalTypes] The type of withdrawal.

      # The different error codes a payout can be in.
      #
      # @see WhopSDK::Models::WithdrawalRetrieveResponse#error_code
      module ErrorCode
        extend WhopSDK::Internal::Type::Enum

        ACCOUNT_CLOSED = :account_closed
        ACCOUNT_DOES_NOT_EXIST = :account_does_not_exist
        ACCOUNT_INFORMATION_INVALID = :account_information_invalid
        ACCOUNT_NUMBER_INVALID_REGION = :account_number_invalid_region
        ACCOUNT_FROZEN = :account_frozen
        ACCOUNT_LOOKUP_FAILED = :account_lookup_failed
        ACCOUNT_NOT_FOUND = :account_not_found
        AMOUNT_OUT_OF_BOUNDS = :amount_out_of_bounds
        ATTRIBUTES_NOT_VALIDATED = :attributes_not_validated
        B2B_PAYMENTS_PROHIBITED = :b2b_payments_prohibited
        BANK_STATEMENT_REQUIRED = :bank_statement_required
        COMPLIANCE_REVIEW = :compliance_review
        CURRENCY_NOT_SUPPORTED = :currency_not_supported
        DEPOSIT_CANCELED = :deposit_canceled
        DEPOSIT_FAILED = :deposit_failed
        DEPOSIT_REJECTED = :deposit_rejected
        DESTINATION_UNAVAILABLE = :destination_unavailable
        EXCEEDED_ACCOUNT_LIMIT = :exceeded_account_limit
        EXPIRED_QUOTE = :expired_quote
        GENERIC_PAYOUT_ERROR = :generic_payout_error
        TECHNICAL_PROBLEM = :technical_problem
        IDENTIFICATION_NUMBER_INVALID = :identification_number_invalid
        INVALID_ACCOUNT_NUMBER = :invalid_account_number
        INVALID_BANK_CODE = :invalid_bank_code
        INVALID_BENEFICIARY = :invalid_beneficiary
        INVALID_BRANCH_NUMBER = :invalid_branch_number
        INVALID_BRANCH_CODE = :invalid_branch_code
        INVALID_PHONE_NUMBER = :invalid_phone_number
        INVALID_ROUTING_NUMBER = :invalid_routing_number
        INVALID_SWIFT_CODE = :invalid_swift_code
        INVALID_COMPANY_DETAILS = :invalid_company_details
        MANUAL_CANCELATION = :manual_cancelation
        MISC_ERROR = :misc_error
        MISSING_CITY_AND_COUNTRY = :missing_city_and_country
        MISSING_PHONE_NUMBER = :missing_phone_number
        MISSING_REMITTANCE_INFO = :missing_remittance_info
        PAYEE_NAME_INVALID = :payee_name_invalid
        RECEIVING_ACCOUNT_LOCKED = :receiving_account_locked
        REJECTED_BY_COMPLIANCE = :rejected_by_compliance
        RTP_NOT_SUPPORTED = :rtp_not_supported
        NON_TRANSACTION_ACCOUNT = :non_transaction_account
        SOURCE_TOKEN_INSUFFICIENT_FUNDS = :source_token_insufficient_funds
        SSN_INVALID = :ssn_invalid
        WALLET_SCREENSHOT_REQUIRED = :wallet_screenshot_required
        UNSUPPORTED_REGION = :unsupported_region

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::WithdrawalRetrieveResponse#ledger_account
      class LedgerAccount < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the LedgerAccount.
        #
        #   @return [String]
        required :id, String

        # @!attribute company_id
        #   The ID of the company associated with this ledger account.
        #
        #   @return [String, nil]
        required :company_id, String, nil?: true

        # @!method initialize(id:, company_id:)
        #   The ledger account associated with the withdrawal.
        #
        #   @param id [String] The ID of the LedgerAccount.
        #
        #   @param company_id [String, nil] The ID of the company associated with this ledger account.
      end

      # @see WhopSDK::Models::WithdrawalRetrieveResponse#payout_token
      class PayoutToken < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payout token
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time the payout token was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute destination_currency_code
        #   The currency code of the payout destination. This is the currency that payouts
        #   will be made in for this token.
        #
        #   @return [String]
        required :destination_currency_code, String

        # @!attribute nickname
        #   An optional nickname for the payout token to help the user identify it. This is
        #   not used by the provider and is only for the user's reference.
        #
        #   @return [String, nil]
        required :nickname, String, nil?: true

        # @!attribute payer_name
        #   The name of the payer associated with the payout token.
        #
        #   @return [String, nil]
        required :payer_name, String, nil?: true

        # @!method initialize(id:, created_at:, destination_currency_code:, nickname:, payer_name:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken} for more details.
        #
        #   The payout token used for the withdrawal, if applicable.
        #
        #   @param id [String] The ID of the payout token
        #
        #   @param created_at [Time] The date and time the payout token was created
        #
        #   @param destination_currency_code [String] The currency code of the payout destination. This is the currency that payouts w
        #
        #   @param nickname [String, nil] An optional nickname for the payout token to help the user identify it. This is
        #
        #   @param payer_name [String, nil] The name of the payer associated with the payout token.
      end
    end
  end
end
