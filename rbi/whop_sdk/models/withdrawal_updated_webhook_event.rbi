# typed: strong

module WhopSDK
  module Models
    class WithdrawalUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::WithdrawalUpdatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # A withdrawal request.
      sig { returns(WhopSDK::WithdrawalUpdatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::WithdrawalUpdatedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          data: WhopSDK::WithdrawalUpdatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # A withdrawal request.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"withdrawal.updated"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::WithdrawalUpdatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::WithdrawalUpdatedWebhookEvent::Data,
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

        # The fee amount that was charged for the withdrawal. This is in the same currency
        # as the withdrawal amount.
        sig { returns(Float) }
        attr_accessor :fee_amount

        # The different fee types for a withdrawal.
        sig { returns(T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol)) }
        attr_accessor :fee_type

        # The latest payout associated with this withdrawal, if any.
        sig do
          returns(
            T.nilable(
              WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout
            )
          )
        end
        attr_reader :latest_payout

        sig do
          params(
            latest_payout:
              T.nilable(
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::OrHash
              )
          ).void
        end
        attr_writer :latest_payout

        # The payout token used for the withdrawal, if applicable.
        sig do
          returns(
            T.nilable(WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken)
          )
        end
        attr_reader :payout_token

        sig do
          params(
            payout_token:
              T.nilable(
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::OrHash
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
            fee_amount: Float,
            fee_type: T.nilable(WhopSDK::WithdrawalFeeTypes::OrSymbol),
            latest_payout:
              T.nilable(
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::OrHash
              ),
            payout_token:
              T.nilable(
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::OrHash
              ),
            speed: WhopSDK::WithdrawalSpeeds::OrSymbol,
            status: WhopSDK::WithdrawalStatus::OrSymbol,
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
          # The fee amount that was charged for the withdrawal. This is in the same currency
          # as the withdrawal amount.
          fee_amount:,
          # The different fee types for a withdrawal.
          fee_type:,
          # The latest payout associated with this withdrawal, if any.
          latest_payout:,
          # The payout token used for the withdrawal, if applicable.
          payout_token:,
          # The speed of the withdrawal.
          speed:,
          # Status of the withdrawal.
          status:,
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
              fee_amount: Float,
              fee_type: T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol),
              latest_payout:
                T.nilable(
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout
                ),
              payout_token:
                T.nilable(
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken
                ),
              speed: WhopSDK::WithdrawalSpeeds::TaggedSymbol,
              status: WhopSDK::WithdrawalStatus::TaggedSymbol,
              withdrawal_type: WhopSDK::WithdrawalTypes::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class LatestPayout < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout,
                WhopSDK::Internal::AnyHash
              )
            end

          # The internal ID of the payout.
          sig { returns(String) }
          attr_accessor :id

          # The date and time the payout was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The different error codes a payout can be in.
          sig do
            returns(
              T.nilable(
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            )
          end
          attr_accessor :error_code

          # The error message for the payout.
          sig { returns(T.nilable(String)) }
          attr_accessor :error_message

          # The estimated availability date of the payout.
          sig { returns(T.nilable(Time)) }
          attr_accessor :estimated_availability

          # The name of the payer for the payout.
          sig { returns(T.nilable(String)) }
          attr_accessor :payer_name

          # The status of the payout.
          sig do
            returns(
              WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The trace code for the payout, if applicable. Provided on ACH transactions when
          # available.
          sig { returns(T.nilable(String)) }
          attr_accessor :trace_code

          # The latest payout associated with this withdrawal, if any.
          sig do
            params(
              id: String,
              created_at: Time,
              error_code:
                T.nilable(
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::OrSymbol
                ),
              error_message: T.nilable(String),
              estimated_availability: T.nilable(Time),
              payer_name: T.nilable(String),
              status:
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::OrSymbol,
              trace_code: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The internal ID of the payout.
            id:,
            # The date and time the payout was created.
            created_at:,
            # The different error codes a payout can be in.
            error_code:,
            # The error message for the payout.
            error_message:,
            # The estimated availability date of the payout.
            estimated_availability:,
            # The name of the payer for the payout.
            payer_name:,
            # The status of the payout.
            status:,
            # The trace code for the payout, if applicable. Provided on ACH transactions when
            # available.
            trace_code:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                error_code:
                  T.nilable(
                    WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
                  ),
                error_message: T.nilable(String),
                estimated_availability: T.nilable(Time),
                payer_name: T.nilable(String),
                status:
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol,
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
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACCOUNT_CLOSED =
              T.let(
                :account_closed,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            ACCOUNT_DOES_NOT_EXIST =
              T.let(
                :account_does_not_exist,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            ACCOUNT_INFORMATION_INVALID =
              T.let(
                :account_information_invalid,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            ACCOUNT_NUMBER_INVALID_REGION =
              T.let(
                :account_number_invalid_region,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            ACCOUNT_FROZEN =
              T.let(
                :account_frozen,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            ACCOUNT_LOOKUP_FAILED =
              T.let(
                :account_lookup_failed,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            ACCOUNT_NOT_FOUND =
              T.let(
                :account_not_found,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            AMOUNT_OUT_OF_BOUNDS =
              T.let(
                :amount_out_of_bounds,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            ATTRIBUTES_NOT_VALIDATED =
              T.let(
                :attributes_not_validated,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            B2B_PAYMENTS_PROHIBITED =
              T.let(
                :b2b_payments_prohibited,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            BANK_STATEMENT_REQUIRED =
              T.let(
                :bank_statement_required,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            COMPLIANCE_REVIEW =
              T.let(
                :compliance_review,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            CURRENCY_NOT_SUPPORTED =
              T.let(
                :currency_not_supported,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            DEPOSIT_CANCELED =
              T.let(
                :deposit_canceled,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            DEPOSIT_FAILED =
              T.let(
                :deposit_failed,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            DEPOSIT_REJECTED =
              T.let(
                :deposit_rejected,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            DESTINATION_UNAVAILABLE =
              T.let(
                :destination_unavailable,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            EXCEEDED_ACCOUNT_LIMIT =
              T.let(
                :exceeded_account_limit,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            EXPIRED_QUOTE =
              T.let(
                :expired_quote,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            GENERIC_PAYOUT_ERROR =
              T.let(
                :generic_payout_error,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            TECHNICAL_PROBLEM =
              T.let(
                :technical_problem,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            IDENTIFICATION_NUMBER_INVALID =
              T.let(
                :identification_number_invalid,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_ACCOUNT_NUMBER =
              T.let(
                :invalid_account_number,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_BANK_CODE =
              T.let(
                :invalid_bank_code,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_BENEFICIARY =
              T.let(
                :invalid_beneficiary,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_BRANCH_NUMBER =
              T.let(
                :invalid_branch_number,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_BRANCH_CODE =
              T.let(
                :invalid_branch_code,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_PHONE_NUMBER =
              T.let(
                :invalid_phone_number,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_ROUTING_NUMBER =
              T.let(
                :invalid_routing_number,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_SWIFT_CODE =
              T.let(
                :invalid_swift_code,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            INVALID_COMPANY_DETAILS =
              T.let(
                :invalid_company_details,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            MANUAL_CANCELATION =
              T.let(
                :manual_cancelation,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            MISC_ERROR =
              T.let(
                :misc_error,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            MISSING_CITY_AND_COUNTRY =
              T.let(
                :missing_city_and_country,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            MISSING_PHONE_NUMBER =
              T.let(
                :missing_phone_number,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            MISSING_REMITTANCE_INFO =
              T.let(
                :missing_remittance_info,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            PAYEE_NAME_INVALID =
              T.let(
                :payee_name_invalid,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            RECEIVING_ACCOUNT_LOCKED =
              T.let(
                :receiving_account_locked,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            REJECTED_BY_COMPLIANCE =
              T.let(
                :rejected_by_compliance,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            RTP_NOT_SUPPORTED =
              T.let(
                :rtp_not_supported,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            NON_TRANSACTION_ACCOUNT =
              T.let(
                :non_transaction_account,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            SOURCE_TOKEN_INSUFFICIENT_FUNDS =
              T.let(
                :source_token_insufficient_funds,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            SSN_INVALID =
              T.let(
                :ssn_invalid,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            WALLET_SCREENSHOT_REQUIRED =
              T.let(
                :wallet_screenshot_required,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )
            UNSUPPORTED_REGION =
              T.let(
                :unsupported_region,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::ErrorCode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The status of the payout.
          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SCHEDULED =
              T.let(
                :scheduled,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )
            READY_FOR_PICKUP =
              T.let(
                :ready_for_pickup,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )
            HOLD =
              T.let(
                :hold,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::LatestPayout::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PayoutToken < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken,
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

          # The status of the payout token.
          sig do
            returns(
              WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The payout token used for the withdrawal, if applicable.
          sig do
            params(
              id: String,
              created_at: Time,
              destination_currency_code: String,
              nickname: T.nilable(String),
              status:
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::Status::OrSymbol
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
            # The status of the payout token.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                destination_currency_code: String,
                nickname: T.nilable(String),
                status:
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The status of the payout token.
          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::Status::TaggedSymbol
              )
            BROKEN =
              T.let(
                :broken,
                WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::WithdrawalUpdatedWebhookEvent::Data::PayoutToken::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
