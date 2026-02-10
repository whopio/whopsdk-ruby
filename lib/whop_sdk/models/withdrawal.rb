# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Withdrawals#create
    class Withdrawal < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the withdrawal.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The withdrawal amount as a decimal number in the specified currency (e.g.,
      #   100.00 for $100.00 USD).
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The datetime the withdrawal was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The three-letter ISO currency code for this withdrawal (e.g., 'usd', 'eur').
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute error_code
      #   The different error codes a payout can be in.
      #
      #   @return [Symbol, WhopSDK::Models::Withdrawal::ErrorCode, nil]
      required :error_code, enum: -> { WhopSDK::Withdrawal::ErrorCode }, nil?: true

      # @!attribute error_message
      #   A human-readable message describing why the payout failed. Null if no error
      #   occurred.
      #
      #   @return [String, nil]
      required :error_message, String, nil?: true

      # @!attribute estimated_availability
      #   The estimated time at which the funds become available in the destination
      #   account. Null if no estimate is available. As a Unix timestamp.
      #
      #   @return [Time, nil]
      required :estimated_availability, Time, nil?: true

      # @!attribute fee_amount
      #   The fee charged for processing this withdrawal, in the same currency as the
      #   withdrawal amount.
      #
      #   @return [Float]
      required :fee_amount, Float

      # @!attribute fee_type
      #   The different fee types for a withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalFeeTypes, nil]
      required :fee_type, enum: -> { WhopSDK::WithdrawalFeeTypes }, nil?: true

      # @!attribute ledger_account
      #   The ledger account from which the withdrawal funds are sourced.
      #
      #   @return [WhopSDK::Models::Withdrawal::LedgerAccount]
      required :ledger_account, -> { WhopSDK::Withdrawal::LedgerAccount }

      # @!attribute markup_fee
      #   An additional markup fee charged for the withdrawal, in the same currency as the
      #   withdrawal amount. Only applies to platform accounts using Whop Rails.
      #
      #   @return [Float]
      required :markup_fee, Float

      # @!attribute payout_token
      #   The saved payout destination used for this withdrawal (e.g., a bank account or
      #   PayPal address). Null if no payout token was used.
      #
      #   @return [WhopSDK::Models::Withdrawal::PayoutToken, nil]
      required :payout_token, -> { WhopSDK::Withdrawal::PayoutToken }, nil?: true

      # @!attribute speed
      #   The processing speed selected for this withdrawal ('standard' or 'instant').
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalSpeeds]
      required :speed, enum: -> { WhopSDK::WithdrawalSpeeds }

      # @!attribute status
      #   The computed lifecycle status of the withdrawal, accounting for the state of
      #   associated payouts (e.g., 'requested', 'in_transit', 'completed', 'failed').
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalStatus]
      required :status, enum: -> { WhopSDK::WithdrawalStatus }

      # @!attribute trace_code
      #   The ACH trace number for tracking the payout through the banking network. Null
      #   if not available or not an ACH transaction.
      #
      #   @return [String, nil]
      required :trace_code, String, nil?: true

      # @!method initialize(id:, amount:, created_at:, currency:, error_code:, error_message:, estimated_availability:, fee_amount:, fee_type:, ledger_account:, markup_fee:, payout_token:, speed:, status:, trace_code:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Withdrawal} for more details.
      #
      #   A withdrawal represents a request to transfer funds from a company's ledger
      #   account to an external payout method.
      #
      #   @param id [String] The unique identifier for the withdrawal.
      #
      #   @param amount [Float] The withdrawal amount as a decimal number in the specified currency (e.g., 100.0
      #
      #   @param created_at [Time] The datetime the withdrawal was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for this withdrawal (e.g., 'usd', 'eur').
      #
      #   @param error_code [Symbol, WhopSDK::Models::Withdrawal::ErrorCode, nil] The different error codes a payout can be in.
      #
      #   @param error_message [String, nil] A human-readable message describing why the payout failed. Null if no error occu
      #
      #   @param estimated_availability [Time, nil] The estimated time at which the funds become available in the destination accoun
      #
      #   @param fee_amount [Float] The fee charged for processing this withdrawal, in the same currency as the with
      #
      #   @param fee_type [Symbol, WhopSDK::Models::WithdrawalFeeTypes, nil] The different fee types for a withdrawal.
      #
      #   @param ledger_account [WhopSDK::Models::Withdrawal::LedgerAccount] The ledger account from which the withdrawal funds are sourced.
      #
      #   @param markup_fee [Float] An additional markup fee charged for the withdrawal, in the same currency as the
      #
      #   @param payout_token [WhopSDK::Models::Withdrawal::PayoutToken, nil] The saved payout destination used for this withdrawal (e.g., a bank account or P
      #
      #   @param speed [Symbol, WhopSDK::Models::WithdrawalSpeeds] The processing speed selected for this withdrawal ('standard' or 'instant').
      #
      #   @param status [Symbol, WhopSDK::Models::WithdrawalStatus] The computed lifecycle status of the withdrawal, accounting for the state of ass
      #
      #   @param trace_code [String, nil] The ACH trace number for tracking the payout through the banking network. Null i

      # The different error codes a payout can be in.
      #
      # @see WhopSDK::Models::Withdrawal#error_code
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
        INVALID_MAILING_ADDRESS = :invalid_mailing_address
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

      # @see WhopSDK::Models::Withdrawal#ledger_account
      class LedgerAccount < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the ledger account.
        #
        #   @return [String]
        required :id, String

        # @!attribute company_id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String, nil]
        required :company_id, String, nil?: true

        # @!method initialize(id:, company_id:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Withdrawal::LedgerAccount} for more details.
        #
        #   The ledger account from which the withdrawal funds are sourced.
        #
        #   @param id [String] The unique identifier for the ledger account.
        #
        #   @param company_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      end

      # @see WhopSDK::Models::Withdrawal#payout_token
      class PayoutToken < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payout token.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The datetime the payout token was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute destination_currency_code
        #   The three-letter ISO currency code that payouts are delivered in for this
        #   destination.
        #
        #   @return [String]
        required :destination_currency_code, String

        # @!attribute nickname
        #   A user-defined label to help identify this payout destination. Not sent to the
        #   provider. Null if no nickname has been set.
        #
        #   @return [String, nil]
        required :nickname, String, nil?: true

        # @!attribute payer_name
        #   The legal name of the account holder receiving payouts. Null if not provided.
        #
        #   @return [String, nil]
        required :payer_name, String, nil?: true

        # @!method initialize(id:, created_at:, destination_currency_code:, nickname:, payer_name:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Withdrawal::PayoutToken} for more details.
        #
        #   The saved payout destination used for this withdrawal (e.g., a bank account or
        #   PayPal address). Null if no payout token was used.
        #
        #   @param id [String] The unique identifier for the payout token.
        #
        #   @param created_at [Time] The datetime the payout token was created.
        #
        #   @param destination_currency_code [String] The three-letter ISO currency code that payouts are delivered in for this destin
        #
        #   @param nickname [String, nil] A user-defined label to help identify this payout destination. Not sent to the p
        #
        #   @param payer_name [String, nil] The legal name of the account holder receiving payouts. Null if not provided.
      end
    end
  end
end
