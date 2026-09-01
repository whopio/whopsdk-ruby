# typed: strong

module WhopSDK
  module Models
    class PayoutMethodCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      sig { returns(WhopSDK::PayoutMethodCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"payout_method.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Payout method ID.
        sig { returns(String) }
        attr_accessor :id

        # Masked identifier for the destination, such as the last four digits of a bank
        # account.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_reference

        # Lifecycle trust state: `checking` (verification still running), `verified` (bank
        # confirmed ownership or a payout already completed to it), `no_data`
        # (verification unavailable or bank returned no ownership data), `warning` (bank
        # could not confirm the destination's owner), `broken` (payouts failed with a
        # permanent account error), `null` (never checked).
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::TaggedSymbol
            )
          )
        end
        attr_accessor :bank_verification_state

        # When the payout method was added.
        sig { returns(Time) }
        attr_accessor :created_at

        # Currency payouts are delivered in for this method.
        sig { returns(String) }
        attr_accessor :destination_currency

        # Estimated arrival times before an amount-specific quote is requested. Null when
        # the method is not currently eligible.
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::EstimatedArrival
            )
          )
        end
        attr_reader :estimated_arrival

        sig do
          params(
            estimated_arrival:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::EstimatedArrival::OrHash
              )
          ).void
        end
        attr_writer :estimated_arrival

        # Configured fee terms for this payout method. Null when the method is not
        # currently eligible. An amount-specific quote remains authoritative.
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::FeeStructure
            )
          )
        end
        attr_reader :fee_structure

        sig do
          params(
            fee_structure:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::FeeStructure::OrHash
              )
          ).void
        end
        attr_writer :fee_structure

        # Name of the bank or institution receiving payouts.
        sig { returns(T.nilable(String)) }
        attr_accessor :institution_name

        # Whether this method is a copy of one saved on another of the payer's accounts.
        sig { returns(T::Boolean) }
        attr_accessor :is_clone

        # Whether this is the default payout method for the account.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # When the most recent completed payout was delivered to this method, as an ISO
        # 8601 timestamp. `null` when nothing has been paid out to it yet.
        sig { returns(T.nilable(Time)) }
        attr_accessor :last_paid_out_at

        # Whether the payer added this method by signing in to their bank rather than
        # typing account details.
        sig { returns(T::Boolean) }
        attr_accessor :linked_via_plaid

        # Whether the bank sign-in behind this method has expired and must be redone
        # before it counts as linked.
        sig { returns(T::Boolean) }
        attr_accessor :needs_plaid_reconnect

        # User-defined label for the payout method.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname

        sig do
          returns(
            WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # Display name of the payout rail, such as `ACH Bank Deposit`.
        sig { returns(T.nilable(String)) }
        attr_accessor :payer_name

        # Fee and delivery estimate for paying out the requested amount through this
        # method. Null unless an amount was provided, or when the estimate is unavailable.
        sig do
          returns(
            T.nilable(WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote)
          )
        end
        attr_reader :quote

        sig do
          params(
            quote:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::OrHash
              )
          ).void
        end
        attr_writer :quote

        # Lifecycle status: `created` means saved but unused, `active` means a payout
        # succeeded through it, `broken` means a payout failure disabled it; a later
        # successful payout returns it to `active`.
        sig do
          returns(
            WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Machine-readable code for why the method is `broken` — the newest disabling
        # failure recorded through it, whether a payout error or a pre-payout rejection.
        # `null` unless the method is broken, or when it was disabled without a recorded
        # failure.
        sig { returns(T.nilable(String)) }
        attr_accessor :status_reason

        # The supported payout method this saved method was created from.
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod
            )
          )
        end
        attr_reader :supported_payout_method

        sig do
          params(
            supported_payout_method:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::OrHash
              )
          ).void
        end
        attr_writer :supported_payout_method

        # Why this method is unavailable: `destination_retired` means the payout provider
        # stopped offering the destination. Whop may automatically remap an eligible
        # method that was not linked through Plaid to a compatible replacement; otherwise,
        # the account owner must re-add it. `null` means no unavailability reason is
        # known.
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason::TaggedSymbol
            )
          )
        end
        attr_accessor :unavailable_reason

        sig do
          params(
            id: String,
            account_reference: T.nilable(String),
            bank_verification_state:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::OrSymbol
              ),
            created_at: Time,
            destination_currency: String,
            estimated_arrival:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::EstimatedArrival::OrHash
              ),
            fee_structure:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::FeeStructure::OrHash
              ),
            institution_name: T.nilable(String),
            is_clone: T::Boolean,
            is_default: T::Boolean,
            last_paid_out_at: T.nilable(Time),
            linked_via_plaid: T::Boolean,
            needs_plaid_reconnect: T::Boolean,
            nickname: T.nilable(String),
            object:
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Object::OrSymbol,
            payer_name: T.nilable(String),
            quote:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::OrHash
              ),
            status:
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status::OrSymbol,
            status_reason: T.nilable(String),
            supported_payout_method:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::OrHash
              ),
            unavailable_reason:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Payout method ID.
          id:,
          # Masked identifier for the destination, such as the last four digits of a bank
          # account.
          account_reference:,
          # Lifecycle trust state: `checking` (verification still running), `verified` (bank
          # confirmed ownership or a payout already completed to it), `no_data`
          # (verification unavailable or bank returned no ownership data), `warning` (bank
          # could not confirm the destination's owner), `broken` (payouts failed with a
          # permanent account error), `null` (never checked).
          bank_verification_state:,
          # When the payout method was added.
          created_at:,
          # Currency payouts are delivered in for this method.
          destination_currency:,
          # Estimated arrival times before an amount-specific quote is requested. Null when
          # the method is not currently eligible.
          estimated_arrival:,
          # Configured fee terms for this payout method. Null when the method is not
          # currently eligible. An amount-specific quote remains authoritative.
          fee_structure:,
          # Name of the bank or institution receiving payouts.
          institution_name:,
          # Whether this method is a copy of one saved on another of the payer's accounts.
          is_clone:,
          # Whether this is the default payout method for the account.
          is_default:,
          # When the most recent completed payout was delivered to this method, as an ISO
          # 8601 timestamp. `null` when nothing has been paid out to it yet.
          last_paid_out_at:,
          # Whether the payer added this method by signing in to their bank rather than
          # typing account details.
          linked_via_plaid:,
          # Whether the bank sign-in behind this method has expired and must be redone
          # before it counts as linked.
          needs_plaid_reconnect:,
          # User-defined label for the payout method.
          nickname:,
          object:,
          # Display name of the payout rail, such as `ACH Bank Deposit`.
          payer_name:,
          # Fee and delivery estimate for paying out the requested amount through this
          # method. Null unless an amount was provided, or when the estimate is unavailable.
          quote:,
          # Lifecycle status: `created` means saved but unused, `active` means a payout
          # succeeded through it, `broken` means a payout failure disabled it; a later
          # successful payout returns it to `active`.
          status:,
          # Machine-readable code for why the method is `broken` — the newest disabling
          # failure recorded through it, whether a payout error or a pre-payout rejection.
          # `null` unless the method is broken, or when it was disabled without a recorded
          # failure.
          status_reason:,
          # The supported payout method this saved method was created from.
          supported_payout_method:,
          # Why this method is unavailable: `destination_retired` means the payout provider
          # stopped offering the destination. Whop may automatically remap an eligible
          # method that was not linked through Plaid to a compatible replacement; otherwise,
          # the account owner must re-add it. `null` means no unavailability reason is
          # known.
          unavailable_reason:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account_reference: T.nilable(String),
              bank_verification_state:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::TaggedSymbol
                ),
              created_at: Time,
              destination_currency: String,
              estimated_arrival:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::EstimatedArrival
                ),
              fee_structure:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::FeeStructure
                ),
              institution_name: T.nilable(String),
              is_clone: T::Boolean,
              is_default: T::Boolean,
              last_paid_out_at: T.nilable(Time),
              linked_via_plaid: T::Boolean,
              needs_plaid_reconnect: T::Boolean,
              nickname: T.nilable(String),
              object:
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Object::TaggedSymbol,
              payer_name: T.nilable(String),
              quote:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote
                ),
              status:
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status::TaggedSymbol,
              status_reason: T.nilable(String),
              supported_payout_method:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod
                ),
              unavailable_reason:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # Lifecycle trust state: `checking` (verification still running), `verified` (bank
        # confirmed ownership or a payout already completed to it), `no_data`
        # (verification unavailable or bank returned no ownership data), `warning` (bank
        # could not confirm the destination's owner), `broken` (payouts failed with a
        # permanent account error), `null` (never checked).
        module BankVerificationState
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHECKING =
            T.let(
              :checking,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::TaggedSymbol
            )
          NO_DATA =
            T.let(
              :no_data,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::TaggedSymbol
            )
          WARNING =
            T.let(
              :warning,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::TaggedSymbol
            )
          BROKEN =
            T.let(
              :broken,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class EstimatedArrival < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::EstimatedArrival,
                WhopSDK::Internal::AnyHash
              )
            end

          # Estimated instant-delivery arrival, or null when unavailable.
          sig { returns(T.nilable(Time)) }
          attr_accessor :instant

          # Estimated standard-delivery arrival, or null when unavailable.
          sig { returns(T.nilable(Time)) }
          attr_accessor :standard

          # Estimated arrival times before an amount-specific quote is requested. Null when
          # the method is not currently eligible.
          sig do
            params(instant: T.nilable(Time), standard: T.nilable(Time)).returns(
              T.attached_class
            )
          end
          def self.new(
            # Estimated instant-delivery arrival, or null when unavailable.
            instant:,
            # Estimated standard-delivery arrival, or null when unavailable.
            standard:
          )
          end

          sig do
            override.returns(
              { instant: T.nilable(Time), standard: T.nilable(Time) }
            )
          end
          def to_hash
          end
        end

        class FeeStructure < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::FeeStructure,
                WhopSDK::Internal::AnyHash
              )
            end

          # Currency code of fixed_amount.
          sig { returns(String) }
          attr_accessor :currency

          # Fixed fee charged, denominated in `currency`.
          sig { returns(Float) }
          attr_accessor :fixed_amount

          # Percentage of the payout amount charged as a fee.
          sig { returns(Float) }
          attr_accessor :percentage

          # Configured fee terms for this payout method. Null when the method is not
          # currently eligible. An amount-specific quote remains authoritative.
          sig do
            params(
              currency: String,
              fixed_amount: Float,
              percentage: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Currency code of fixed_amount.
            currency:,
            # Fixed fee charged, denominated in `currency`.
            fixed_amount:,
            # Percentage of the payout amount charged as a fee.
            percentage:
          )
          end

          sig do
            override.returns(
              { currency: String, fixed_amount: Float, percentage: Float }
            )
          end
          def to_hash
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYOUT_METHOD =
            T.let(
              :payout_method,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Quote < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote,
                WhopSDK::Internal::AnyHash
              )
            end

          # The payout amount the quote is for.
          sig { returns(Float) }
          attr_accessor :amount

          # Currency of the quoted amount.
          sig { returns(String) }
          attr_accessor :currency

          # Exchange rate from the payout currency to the destination currency.
          sig { returns(Float) }
          attr_accessor :exchange_rate

          # Instant-delivery estimate. Null if the method does not support instant delivery,
          # instant delivery is unavailable for the account, or the amount does not cover
          # the fee.
          sig do
            returns(
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Instant
              )
            )
          end
          attr_reader :instant

          sig do
            params(
              instant:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Instant::OrHash
                )
            ).void
          end
          attr_writer :instant

          # Why instant delivery is unavailable for this method.
          # `minimum_crypto_sales_not_met` means the account has not reached the total sales
          # required for instant cryptocurrency payouts. `null` when this restriction does
          # not apply.
          sig do
            returns(
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason::TaggedSymbol
              )
            )
          end
          attr_accessor :instant_unavailable_reason

          # Maximum payout amount for this method, in the payout currency.
          sig { returns(T.nilable(Float)) }
          attr_accessor :max_limit

          # Minimum payout amount for this method, in the payout currency.
          sig { returns(Float) }
          attr_accessor :min_limit

          # Standard-delivery estimate. Null if the method does not support standard
          # delivery, or the amount does not cover the fee.
          sig do
            returns(
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Standard
              )
            )
          end
          attr_reader :standard

          sig do
            params(
              standard:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Standard::OrHash
                )
            ).void
          end
          attr_writer :standard

          # Fee and delivery estimate for paying out the requested amount through this
          # method. Null unless an amount was provided, or when the estimate is unavailable.
          sig do
            params(
              amount: Float,
              currency: String,
              exchange_rate: Float,
              instant:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Instant::OrHash
                ),
              instant_unavailable_reason:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason::OrSymbol
                ),
              max_limit: T.nilable(Float),
              min_limit: Float,
              standard:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Standard::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The payout amount the quote is for.
            amount:,
            # Currency of the quoted amount.
            currency:,
            # Exchange rate from the payout currency to the destination currency.
            exchange_rate:,
            # Instant-delivery estimate. Null if the method does not support instant delivery,
            # instant delivery is unavailable for the account, or the amount does not cover
            # the fee.
            instant:,
            # Why instant delivery is unavailable for this method.
            # `minimum_crypto_sales_not_met` means the account has not reached the total sales
            # required for instant cryptocurrency payouts. `null` when this restriction does
            # not apply.
            instant_unavailable_reason:,
            # Maximum payout amount for this method, in the payout currency.
            max_limit:,
            # Minimum payout amount for this method, in the payout currency.
            min_limit:,
            # Standard-delivery estimate. Null if the method does not support standard
            # delivery, or the amount does not cover the fee.
            standard:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                currency: String,
                exchange_rate: Float,
                instant:
                  T.nilable(
                    WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Instant
                  ),
                instant_unavailable_reason:
                  T.nilable(
                    WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason::TaggedSymbol
                  ),
                max_limit: T.nilable(Float),
                min_limit: Float,
                standard:
                  T.nilable(
                    WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Standard
                  )
              }
            )
          end
          def to_hash
          end

          class Instant < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Instant,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Total fee charged, in the payout currency.
            sig { returns(Float) }
            attr_accessor :fee

            # Amount remaining after fees, in the payout currency.
            sig { returns(Float) }
            attr_accessor :total_received

            # Instant-delivery estimate. Null if the method does not support instant delivery,
            # instant delivery is unavailable for the account, or the amount does not cover
            # the fee.
            sig do
              params(fee: Float, total_received: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Total fee charged, in the payout currency.
              fee:,
              # Amount remaining after fees, in the payout currency.
              total_received:
            )
            end

            sig { override.returns({ fee: Float, total_received: Float }) }
            def to_hash
            end
          end

          # Why instant delivery is unavailable for this method.
          # `minimum_crypto_sales_not_met` means the account has not reached the total sales
          # required for instant cryptocurrency payouts. `null` when this restriction does
          # not apply.
          module InstantUnavailableReason
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MINIMUM_CRYPTO_SALES_NOT_MET =
              T.let(
                :minimum_crypto_sales_not_met,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Standard < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Standard,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Total fee charged, in the payout currency.
            sig { returns(Float) }
            attr_accessor :fee

            # Amount remaining after fees, in the payout currency.
            sig { returns(Float) }
            attr_accessor :total_received

            # Standard-delivery estimate. Null if the method does not support standard
            # delivery, or the amount does not cover the fee.
            sig do
              params(fee: Float, total_received: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Total fee charged, in the payout currency.
              fee:,
              # Amount remaining after fees, in the payout currency.
              total_received:
            )
            end

            sig { override.returns({ fee: Float, total_received: Float }) }
            def to_hash
            end
          end
        end

        # Lifecycle status: `created` means saved but unused, `active` means a payout
        # succeeded through it, `broken` means a payout failure disabled it; a later
        # successful payout returns it to `active`.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          BROKEN =
            T.let(
              :broken,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SupportedPayoutMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # ISO 3166-1 alpha-3 country the destination pays out to.
          sig { returns(T.nilable(String)) }
          attr_accessor :country_code

          # How funds are delivered.
          sig do
            returns(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
            )
          end
          attr_accessor :delivery_type

          # Supported payout method icon URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :icon_url

          # Supported payout method display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(T::Boolean) }
          attr_accessor :supports_instant_delivery

          # Whether the payer can link this method by signing in to their bank instead of
          # typing account details.
          sig { returns(T::Boolean) }
          attr_accessor :supports_plaid

          sig { returns(T::Boolean) }
          attr_accessor :supports_standard_delivery

          # The supported payout method this saved method was created from.
          sig do
            params(
              country_code: T.nilable(String),
              delivery_type:
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::OrSymbol,
              icon_url: T.nilable(String),
              name: T.nilable(String),
              supports_instant_delivery: T::Boolean,
              supports_plaid: T::Boolean,
              supports_standard_delivery: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # ISO 3166-1 alpha-3 country the destination pays out to.
            country_code:,
            # How funds are delivered.
            delivery_type:,
            # Supported payout method icon URL.
            icon_url:,
            # Supported payout method display name.
            name:,
            supports_instant_delivery:,
            # Whether the payer can link this method by signing in to their bank instead of
            # typing account details.
            supports_plaid:,
            supports_standard_delivery:
          )
          end

          sig do
            override.returns(
              {
                country_code: T.nilable(String),
                delivery_type:
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol,
                icon_url: T.nilable(String),
                name: T.nilable(String),
                supports_instant_delivery: T::Boolean,
                supports_plaid: T::Boolean,
                supports_standard_delivery: T::Boolean
              }
            )
          end
          def to_hash
          end

          # How funds are delivered.
          module DeliveryType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CASH_PICKUP =
              T.let(
                :cash_pickup,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            BANK_DEPOSIT =
              T.let(
                :bank_deposit,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            HOME_DELIVERY =
              T.let(
                :home_delivery,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            MOBILE_WALLET =
              T.let(
                :mobile_wallet,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            CARD =
              T.let(
                :card,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            CHECK =
              T.let(
                :check,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            BILL =
              T.let(
                :bill,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            CRYPTOCURRENCY =
              T.let(
                :cryptocurrency,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Why this method is unavailable: `destination_retired` means the payout provider
        # stopped offering the destination. Whop may automatically remap an eligible
        # method that was not linked through Plaid to a compatible replacement; otherwise,
        # the account owner must re-add it. `null` means no unavailability reason is
        # known.
        module UnavailableReason
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DESTINATION_RETIRED =
            T.let(
              :destination_retired,
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason::TaggedSymbol
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
