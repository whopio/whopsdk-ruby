# typed: strong

module WhopSDK
  module Models
    class Withdrawal < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Withdrawal, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the withdrawal.
      sig { returns(String) }
      attr_accessor :id

      # The withdrawal amount as a decimal number in the specified currency (e.g.,
      # 100.00 for $100.00 USD).
      sig { returns(Float) }
      attr_accessor :amount

      # The datetime the withdrawal was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The three-letter ISO currency code for this withdrawal (e.g., 'usd', 'eur').
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The different error codes a payout can be in.
      sig { returns(T.nilable(WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)) }
      attr_accessor :error_code

      # A human-readable message describing why the payout failed. Null if no error
      # occurred.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # The estimated time at which the funds become available in the destination
      # account. Null if no estimate is available. As a Unix timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :estimated_availability

      # The fee charged for processing this withdrawal, in the same currency as the
      # withdrawal amount.
      sig { returns(Float) }
      attr_accessor :fee_amount

      # The different fee types for a withdrawal.
      sig { returns(T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol)) }
      attr_accessor :fee_type

      # The ledger account from which the withdrawal funds are sourced.
      sig { returns(WhopSDK::Withdrawal::LedgerAccount) }
      attr_reader :ledger_account

      sig do
        params(ledger_account: WhopSDK::Withdrawal::LedgerAccount::OrHash).void
      end
      attr_writer :ledger_account

      # An additional markup fee charged for the withdrawal, in the same currency as the
      # withdrawal amount. Only applies to platform accounts using Whop Rails.
      sig { returns(Float) }
      attr_accessor :markup_fee

      # The saved payout destination used for this withdrawal (e.g., a bank account or
      # PayPal address). Null if no payout token was used.
      sig { returns(T.nilable(WhopSDK::Withdrawal::PayoutToken)) }
      attr_reader :payout_token

      sig do
        params(
          payout_token: T.nilable(WhopSDK::Withdrawal::PayoutToken::OrHash)
        ).void
      end
      attr_writer :payout_token

      # The processing speed selected for this withdrawal ('standard' or 'instant').
      sig { returns(WhopSDK::WithdrawalSpeeds::TaggedSymbol) }
      attr_accessor :speed

      # The computed lifecycle status of the withdrawal, accounting for the state of
      # associated payouts (e.g., 'requested', 'in_transit', 'completed', 'failed').
      sig { returns(WhopSDK::WithdrawalStatus::TaggedSymbol) }
      attr_accessor :status

      # The ACH trace number for tracking the payout through the banking network. Null
      # if not available or not an ACH transaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :trace_code

      # A withdrawal represents a request to transfer funds from a ledger account to an
      # external payout method.
      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          error_code: T.nilable(WhopSDK::Withdrawal::ErrorCode::OrSymbol),
          error_message: T.nilable(String),
          estimated_availability: T.nilable(Time),
          fee_amount: Float,
          fee_type: T.nilable(WhopSDK::WithdrawalFeeTypes::OrSymbol),
          ledger_account: WhopSDK::Withdrawal::LedgerAccount::OrHash,
          markup_fee: Float,
          payout_token: T.nilable(WhopSDK::Withdrawal::PayoutToken::OrHash),
          speed: WhopSDK::WithdrawalSpeeds::OrSymbol,
          status: WhopSDK::WithdrawalStatus::OrSymbol,
          trace_code: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the withdrawal.
        id:,
        # The withdrawal amount as a decimal number in the specified currency (e.g.,
        # 100.00 for $100.00 USD).
        amount:,
        # The datetime the withdrawal was created.
        created_at:,
        # The three-letter ISO currency code for this withdrawal (e.g., 'usd', 'eur').
        currency:,
        # The different error codes a payout can be in.
        error_code:,
        # A human-readable message describing why the payout failed. Null if no error
        # occurred.
        error_message:,
        # The estimated time at which the funds become available in the destination
        # account. Null if no estimate is available. As a Unix timestamp.
        estimated_availability:,
        # The fee charged for processing this withdrawal, in the same currency as the
        # withdrawal amount.
        fee_amount:,
        # The different fee types for a withdrawal.
        fee_type:,
        # The ledger account from which the withdrawal funds are sourced.
        ledger_account:,
        # An additional markup fee charged for the withdrawal, in the same currency as the
        # withdrawal amount. Only applies to platform accounts using Whop Rails.
        markup_fee:,
        # The saved payout destination used for this withdrawal (e.g., a bank account or
        # PayPal address). Null if no payout token was used.
        payout_token:,
        # The processing speed selected for this withdrawal ('standard' or 'instant').
        speed:,
        # The computed lifecycle status of the withdrawal, accounting for the state of
        # associated payouts (e.g., 'requested', 'in_transit', 'completed', 'failed').
        status:,
        # The ACH trace number for tracking the payout through the banking network. Null
        # if not available or not an ACH transaction.
        trace_code:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            error_code: T.nilable(WhopSDK::Withdrawal::ErrorCode::TaggedSymbol),
            error_message: T.nilable(String),
            estimated_availability: T.nilable(Time),
            fee_amount: Float,
            fee_type: T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol),
            ledger_account: WhopSDK::Withdrawal::LedgerAccount,
            markup_fee: Float,
            payout_token: T.nilable(WhopSDK::Withdrawal::PayoutToken),
            speed: WhopSDK::WithdrawalSpeeds::TaggedSymbol,
            status: WhopSDK::WithdrawalStatus::TaggedSymbol,
            trace_code: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The different error codes a payout can be in.
      module ErrorCode
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Withdrawal::ErrorCode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_CLOSED =
          T.let(:account_closed, WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)
        ACCOUNT_DOES_NOT_EXIST =
          T.let(
            :account_does_not_exist,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        ACCOUNT_INFORMATION_INVALID =
          T.let(
            :account_information_invalid,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        ACCOUNT_NUMBER_INVALID_REGION =
          T.let(
            :account_number_invalid_region,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        ACCOUNT_FROZEN =
          T.let(:account_frozen, WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)
        ACCOUNT_LOOKUP_FAILED =
          T.let(
            :account_lookup_failed,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        ACCOUNT_NOT_FOUND =
          T.let(
            :account_not_found,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        AMOUNT_OUT_OF_BOUNDS =
          T.let(
            :amount_out_of_bounds,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        ATTRIBUTES_NOT_VALIDATED =
          T.let(
            :attributes_not_validated,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        B2B_PAYMENTS_PROHIBITED =
          T.let(
            :b2b_payments_prohibited,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        BANK_STATEMENT_REQUIRED =
          T.let(
            :bank_statement_required,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        COMPLIANCE_REVIEW =
          T.let(
            :compliance_review,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        CURRENCY_NOT_SUPPORTED =
          T.let(
            :currency_not_supported,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        DEPOSIT_CANCELED =
          T.let(:deposit_canceled, WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)
        DEPOSIT_FAILED =
          T.let(:deposit_failed, WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)
        DEPOSIT_REJECTED =
          T.let(:deposit_rejected, WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)
        DESTINATION_UNAVAILABLE =
          T.let(
            :destination_unavailable,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        EXCEEDED_ACCOUNT_LIMIT =
          T.let(
            :exceeded_account_limit,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        EXPIRED_QUOTE =
          T.let(:expired_quote, WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)
        GENERIC_PAYOUT_ERROR =
          T.let(
            :generic_payout_error,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        TECHNICAL_PROBLEM =
          T.let(
            :technical_problem,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        IDENTIFICATION_NUMBER_INVALID =
          T.let(
            :identification_number_invalid,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_ACCOUNT_NUMBER =
          T.let(
            :invalid_account_number,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_BANK_CODE =
          T.let(
            :invalid_bank_code,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_BENEFICIARY =
          T.let(
            :invalid_beneficiary,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_MAILING_ADDRESS =
          T.let(
            :invalid_mailing_address,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_BRANCH_NUMBER =
          T.let(
            :invalid_branch_number,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_BRANCH_CODE =
          T.let(
            :invalid_branch_code,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_PHONE_NUMBER =
          T.let(
            :invalid_phone_number,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_ROUTING_NUMBER =
          T.let(
            :invalid_routing_number,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_SWIFT_CODE =
          T.let(
            :invalid_swift_code,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        INVALID_COMPANY_DETAILS =
          T.let(
            :invalid_company_details,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        MANUAL_CANCELATION =
          T.let(
            :manual_cancelation,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        MISC_ERROR =
          T.let(:misc_error, WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)
        MISSING_CITY_AND_COUNTRY =
          T.let(
            :missing_city_and_country,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        MISSING_PHONE_NUMBER =
          T.let(
            :missing_phone_number,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        MISSING_REMITTANCE_INFO =
          T.let(
            :missing_remittance_info,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        PAYEE_NAME_INVALID =
          T.let(
            :payee_name_invalid,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        RECEIVING_ACCOUNT_LOCKED =
          T.let(
            :receiving_account_locked,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        REJECTED_BY_COMPLIANCE =
          T.let(
            :rejected_by_compliance,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        RTP_NOT_SUPPORTED =
          T.let(
            :rtp_not_supported,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        NON_TRANSACTION_ACCOUNT =
          T.let(
            :non_transaction_account,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        SOURCE_TOKEN_INSUFFICIENT_FUNDS =
          T.let(
            :source_token_insufficient_funds,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        SSN_INVALID =
          T.let(:ssn_invalid, WhopSDK::Withdrawal::ErrorCode::TaggedSymbol)
        WALLET_SCREENSHOT_REQUIRED =
          T.let(
            :wallet_screenshot_required,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        UNSUPPORTED_REGION =
          T.let(
            :unsupported_region,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )
        PAYOUT_PROVIDER_TIMEOUT =
          T.let(
            :payout_provider_timeout,
            WhopSDK::Withdrawal::ErrorCode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Withdrawal::ErrorCode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class LedgerAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Withdrawal::LedgerAccount,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the ledger account.
        sig { returns(String) }
        attr_accessor :id

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :company_id

        # The ledger account from which the withdrawal funds are sourced.
        sig do
          params(id: String, company_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the ledger account.
          id:,
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          company_id:
        )
        end

        sig { override.returns({ id: String, company_id: T.nilable(String) }) }
        def to_hash
        end
      end

      class PayoutToken < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Withdrawal::PayoutToken, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the payout token.
        sig { returns(String) }
        attr_accessor :id

        # The datetime the payout token was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The three-letter ISO currency code that payouts are delivered in for this
        # destination.
        sig { returns(String) }
        attr_accessor :destination_currency_code

        # A user-defined label to help identify this payout destination. Not sent to the
        # provider. Null if no nickname has been set.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname

        # The legal name of the account holder receiving payouts. Null if not provided.
        sig { returns(T.nilable(String)) }
        attr_accessor :payer_name

        # The saved payout destination used for this withdrawal (e.g., a bank account or
        # PayPal address). Null if no payout token was used.
        sig do
          params(
            id: String,
            created_at: Time,
            destination_currency_code: String,
            nickname: T.nilable(String),
            payer_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the payout token.
          id:,
          # The datetime the payout token was created.
          created_at:,
          # The three-letter ISO currency code that payouts are delivered in for this
          # destination.
          destination_currency_code:,
          # A user-defined label to help identify this payout destination. Not sent to the
          # provider. Null if no nickname has been set.
          nickname:,
          # The legal name of the account holder receiving payouts. Null if not provided.
          payer_name:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              destination_currency_code: String,
              nickname: T.nilable(String),
              payer_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
