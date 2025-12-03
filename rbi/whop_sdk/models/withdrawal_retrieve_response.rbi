# typed: strong

module WhopSDK
  module Models
    class WithdrawalRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WithdrawalRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Internal ID of the withdrawal request.
      sig { returns(String) }
      attr_accessor :id

      # How much money was attempted to be withdrawn, in a float type.
      sig { returns(Float) }
      attr_accessor :amount

      # When the withdrawal request was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the withdrawal request.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The different error codes a payout can be in.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        )
      end
      attr_accessor :error_code

      # The error message for the withdrawal, if any.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # The estimated availability date for the withdrawal, if any.
      sig { returns(T.nilable(Time)) }
      attr_accessor :estimated_availability

      # The fee amount that was charged for the withdrawal. This is in the same currency
      # as the withdrawal amount.
      sig { returns(Float) }
      attr_accessor :fee_amount

      # The different fee types for a withdrawal.
      sig { returns(T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol)) }
      attr_accessor :fee_type

      # The ledger account associated with the withdrawal.
      sig do
        returns(WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount)
      end
      attr_reader :ledger_account

      sig do
        params(
          ledger_account:
            WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount::OrHash
        ).void
      end
      attr_writer :ledger_account

      # The payout token used for the withdrawal, if applicable.
      sig do
        returns(
          T.nilable(WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken)
        )
      end
      attr_reader :payout_token

      sig do
        params(
          payout_token:
            T.nilable(
              WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken::OrHash
            )
        ).void
      end
      attr_writer :payout_token

      # The speed of the withdrawal.
      sig { returns(WhopSDK::WithdrawalSpeeds::TaggedSymbol) }
      attr_accessor :speed

      # Status of the withdrawal.
      sig { returns(WhopSDK::WithdrawalStatus::TaggedSymbol) }
      attr_accessor :status

      # The trace code for the payout, if applicable. Provided on ACH transactions when
      # available.
      sig { returns(T.nilable(String)) }
      attr_accessor :trace_code

      # The type of withdrawal.
      sig { returns(WhopSDK::WithdrawalTypes::TaggedSymbol) }
      attr_accessor :withdrawal_type

      # A withdrawal request.
      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          error_code:
            T.nilable(
              WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::OrSymbol
            ),
          error_message: T.nilable(String),
          estimated_availability: T.nilable(Time),
          fee_amount: Float,
          fee_type: T.nilable(WhopSDK::WithdrawalFeeTypes::OrSymbol),
          ledger_account:
            WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount::OrHash,
          payout_token:
            T.nilable(
              WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken::OrHash
            ),
          speed: WhopSDK::WithdrawalSpeeds::OrSymbol,
          status: WhopSDK::WithdrawalStatus::OrSymbol,
          trace_code: T.nilable(String),
          withdrawal_type: WhopSDK::WithdrawalTypes::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Internal ID of the withdrawal request.
        id:,
        # How much money was attempted to be withdrawn, in a float type.
        amount:,
        # When the withdrawal request was created.
        created_at:,
        # The currency of the withdrawal request.
        currency:,
        # The different error codes a payout can be in.
        error_code:,
        # The error message for the withdrawal, if any.
        error_message:,
        # The estimated availability date for the withdrawal, if any.
        estimated_availability:,
        # The fee amount that was charged for the withdrawal. This is in the same currency
        # as the withdrawal amount.
        fee_amount:,
        # The different fee types for a withdrawal.
        fee_type:,
        # The ledger account associated with the withdrawal.
        ledger_account:,
        # The payout token used for the withdrawal, if applicable.
        payout_token:,
        # The speed of the withdrawal.
        speed:,
        # Status of the withdrawal.
        status:,
        # The trace code for the payout, if applicable. Provided on ACH transactions when
        # available.
        trace_code:,
        # The type of withdrawal.
        withdrawal_type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            error_code:
              T.nilable(
                WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
              ),
            error_message: T.nilable(String),
            estimated_availability: T.nilable(Time),
            fee_amount: Float,
            fee_type: T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol),
            ledger_account:
              WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount,
            payout_token:
              T.nilable(
                WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken
              ),
            speed: WhopSDK::WithdrawalSpeeds::TaggedSymbol,
            status: WhopSDK::WithdrawalStatus::TaggedSymbol,
            trace_code: T.nilable(String),
            withdrawal_type: WhopSDK::WithdrawalTypes::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The different error codes a payout can be in.
      module ErrorCode
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_CLOSED =
          T.let(
            :account_closed,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        ACCOUNT_DOES_NOT_EXIST =
          T.let(
            :account_does_not_exist,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        ACCOUNT_INFORMATION_INVALID =
          T.let(
            :account_information_invalid,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        ACCOUNT_NUMBER_INVALID_REGION =
          T.let(
            :account_number_invalid_region,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        ACCOUNT_FROZEN =
          T.let(
            :account_frozen,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        ACCOUNT_LOOKUP_FAILED =
          T.let(
            :account_lookup_failed,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        ACCOUNT_NOT_FOUND =
          T.let(
            :account_not_found,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        AMOUNT_OUT_OF_BOUNDS =
          T.let(
            :amount_out_of_bounds,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        ATTRIBUTES_NOT_VALIDATED =
          T.let(
            :attributes_not_validated,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        B2B_PAYMENTS_PROHIBITED =
          T.let(
            :b2b_payments_prohibited,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        BANK_STATEMENT_REQUIRED =
          T.let(
            :bank_statement_required,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        COMPLIANCE_REVIEW =
          T.let(
            :compliance_review,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        CURRENCY_NOT_SUPPORTED =
          T.let(
            :currency_not_supported,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        DEPOSIT_CANCELED =
          T.let(
            :deposit_canceled,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        DEPOSIT_FAILED =
          T.let(
            :deposit_failed,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        DEPOSIT_REJECTED =
          T.let(
            :deposit_rejected,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        DESTINATION_UNAVAILABLE =
          T.let(
            :destination_unavailable,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        EXCEEDED_ACCOUNT_LIMIT =
          T.let(
            :exceeded_account_limit,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        EXPIRED_QUOTE =
          T.let(
            :expired_quote,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        GENERIC_PAYOUT_ERROR =
          T.let(
            :generic_payout_error,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        TECHNICAL_PROBLEM =
          T.let(
            :technical_problem,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        IDENTIFICATION_NUMBER_INVALID =
          T.let(
            :identification_number_invalid,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_ACCOUNT_NUMBER =
          T.let(
            :invalid_account_number,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_BANK_CODE =
          T.let(
            :invalid_bank_code,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_BENEFICIARY =
          T.let(
            :invalid_beneficiary,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_BRANCH_NUMBER =
          T.let(
            :invalid_branch_number,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_BRANCH_CODE =
          T.let(
            :invalid_branch_code,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_PHONE_NUMBER =
          T.let(
            :invalid_phone_number,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_ROUTING_NUMBER =
          T.let(
            :invalid_routing_number,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_SWIFT_CODE =
          T.let(
            :invalid_swift_code,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        INVALID_COMPANY_DETAILS =
          T.let(
            :invalid_company_details,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        MANUAL_CANCELATION =
          T.let(
            :manual_cancelation,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        MISC_ERROR =
          T.let(
            :misc_error,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        MISSING_CITY_AND_COUNTRY =
          T.let(
            :missing_city_and_country,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        MISSING_PHONE_NUMBER =
          T.let(
            :missing_phone_number,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        MISSING_REMITTANCE_INFO =
          T.let(
            :missing_remittance_info,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        PAYEE_NAME_INVALID =
          T.let(
            :payee_name_invalid,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        RECEIVING_ACCOUNT_LOCKED =
          T.let(
            :receiving_account_locked,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        REJECTED_BY_COMPLIANCE =
          T.let(
            :rejected_by_compliance,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        RTP_NOT_SUPPORTED =
          T.let(
            :rtp_not_supported,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        NON_TRANSACTION_ACCOUNT =
          T.let(
            :non_transaction_account,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        SOURCE_TOKEN_INSUFFICIENT_FUNDS =
          T.let(
            :source_token_insufficient_funds,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        SSN_INVALID =
          T.let(
            :ssn_invalid,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        WALLET_SCREENSHOT_REQUIRED =
          T.let(
            :wallet_screenshot_required,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )
        UNSUPPORTED_REGION =
          T.let(
            :unsupported_region,
            WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class LedgerAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the LedgerAccount.
        sig { returns(String) }
        attr_accessor :id

        # The ID of the company associated with this ledger account.
        sig { returns(T.nilable(String)) }
        attr_accessor :company_id

        # The ledger account associated with the withdrawal.
        sig do
          params(id: String, company_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the LedgerAccount.
          id:,
          # The ID of the company associated with this ledger account.
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
            T.any(
              WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the payout token
        sig { returns(String) }
        attr_accessor :id

        # The date and time the payout token was created
        sig { returns(Time) }
        attr_accessor :created_at

        # The currency code of the payout destination. This is the currency that payouts
        # will be made in for this token.
        sig { returns(String) }
        attr_accessor :destination_currency_code

        # An optional nickname for the payout token to help the user identify it. This is
        # not used by the provider and is only for the user's reference.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname

        # The name of the payer associated with the payout token.
        sig { returns(T.nilable(String)) }
        attr_accessor :payer_name

        # The payout token used for the withdrawal, if applicable.
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
          # The ID of the payout token
          id:,
          # The date and time the payout token was created
          created_at:,
          # The currency code of the payout destination. This is the currency that payouts
          # will be made in for this token.
          destination_currency_code:,
          # An optional nickname for the payout token to help the user identify it. This is
          # not used by the provider and is only for the user's reference.
          nickname:,
          # The name of the payer associated with the payout token.
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
