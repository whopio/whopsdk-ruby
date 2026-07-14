# typed: strong

module WhopSDK
  module Models
    module Payouts
      class MethodListResponse < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::Payouts::MethodListResponse,
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

        # When the payout method was added.
        sig { returns(Time) }
        attr_accessor :created_at

        # Currency payouts are delivered in for this method.
        sig { returns(String) }
        attr_accessor :destination_currency

        # Name of the bank or institution receiving payouts.
        sig { returns(T.nilable(String)) }
        attr_accessor :institution_name

        # Whether this is the default payout method for the account.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # User-defined label for the payout method.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname

        sig do
          returns(
            WhopSDK::Models::Payouts::MethodListResponse::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # Display name of the payout rail, such as `ACH Bank Deposit`.
        sig { returns(T.nilable(String)) }
        attr_accessor :payer_name

        # The payout rail this method delivers through.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination
            )
          )
        end
        attr_reader :payout_destination

        sig do
          params(
            payout_destination:
              T.nilable(
                WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination::OrHash
              )
          ).void
        end
        attr_writer :payout_destination

        # Fee and delivery estimate for withdrawing the requested amount through this
        # method. Null unless an amount was provided, or when the estimate is unavailable.
        sig do
          returns(
            T.nilable(WhopSDK::Models::Payouts::MethodListResponse::Quote)
          )
        end
        attr_reader :quote

        sig do
          params(
            quote:
              T.nilable(
                WhopSDK::Models::Payouts::MethodListResponse::Quote::OrHash
              )
          ).void
        end
        attr_writer :quote

        # Lifecycle status: `created` means saved but unused, `active` means a payout
        # succeeded through it, `broken` means the last payout failed.
        sig do
          returns(
            WhopSDK::Models::Payouts::MethodListResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            id: String,
            account_reference: T.nilable(String),
            created_at: Time,
            destination_currency: String,
            institution_name: T.nilable(String),
            is_default: T::Boolean,
            nickname: T.nilable(String),
            object:
              WhopSDK::Models::Payouts::MethodListResponse::Object::OrSymbol,
            payer_name: T.nilable(String),
            payout_destination:
              T.nilable(
                WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination::OrHash
              ),
            quote:
              T.nilable(
                WhopSDK::Models::Payouts::MethodListResponse::Quote::OrHash
              ),
            status:
              WhopSDK::Models::Payouts::MethodListResponse::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Payout method ID.
          id:,
          # Masked identifier for the destination, such as the last four digits of a bank
          # account.
          account_reference:,
          # When the payout method was added.
          created_at:,
          # Currency payouts are delivered in for this method.
          destination_currency:,
          # Name of the bank or institution receiving payouts.
          institution_name:,
          # Whether this is the default payout method for the account.
          is_default:,
          # User-defined label for the payout method.
          nickname:,
          object:,
          # Display name of the payout rail, such as `ACH Bank Deposit`.
          payer_name:,
          # The payout rail this method delivers through.
          payout_destination:,
          # Fee and delivery estimate for withdrawing the requested amount through this
          # method. Null unless an amount was provided, or when the estimate is unavailable.
          quote:,
          # Lifecycle status: `created` means saved but unused, `active` means a payout
          # succeeded through it, `broken` means the last payout failed.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account_reference: T.nilable(String),
              created_at: Time,
              destination_currency: String,
              institution_name: T.nilable(String),
              is_default: T::Boolean,
              nickname: T.nilable(String),
              object:
                WhopSDK::Models::Payouts::MethodListResponse::Object::TaggedSymbol,
              payer_name: T.nilable(String),
              payout_destination:
                T.nilable(
                  WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination
                ),
              quote:
                T.nilable(WhopSDK::Models::Payouts::MethodListResponse::Quote),
              status:
                WhopSDK::Models::Payouts::MethodListResponse::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::Payouts::MethodListResponse::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYOUT_METHOD =
            T.let(
              :payout_method,
              WhopSDK::Models::Payouts::MethodListResponse::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::Payouts::MethodListResponse::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PayoutDestination < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination,
                WhopSDK::Internal::AnyHash
              )
            end

          # How funds are delivered, for example `bank_deposit`.
          sig { returns(String) }
          attr_accessor :delivery_type

          # Payout destination icon URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :icon_url

          # Payout destination display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(T::Boolean) }
          attr_accessor :supports_instant_delivery

          sig { returns(T::Boolean) }
          attr_accessor :supports_standard_delivery

          # The payout rail this method delivers through.
          sig do
            params(
              delivery_type: String,
              icon_url: T.nilable(String),
              name: T.nilable(String),
              supports_instant_delivery: T::Boolean,
              supports_standard_delivery: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # How funds are delivered, for example `bank_deposit`.
            delivery_type:,
            # Payout destination icon URL.
            icon_url:,
            # Payout destination display name.
            name:,
            supports_instant_delivery:,
            supports_standard_delivery:
          )
          end

          sig do
            override.returns(
              {
                delivery_type: String,
                icon_url: T.nilable(String),
                name: T.nilable(String),
                supports_instant_delivery: T::Boolean,
                supports_standard_delivery: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        class Quote < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Payouts::MethodListResponse::Quote,
                WhopSDK::Internal::AnyHash
              )
            end

          # The withdrawal amount the quote is for.
          sig { returns(Float) }
          attr_accessor :amount

          # Currency of the quoted amount.
          sig { returns(String) }
          attr_accessor :currency

          # Exchange rate from the withdrawal currency to the destination currency.
          sig { returns(Float) }
          attr_accessor :exchange_rate

          # Instant-delivery estimate. Null if the method does not support instant delivery,
          # instant delivery is unavailable for the account, or the amount does not cover
          # the fee.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Payouts::MethodListResponse::Quote::Instant
              )
            )
          end
          attr_reader :instant

          sig do
            params(
              instant:
                T.nilable(
                  WhopSDK::Models::Payouts::MethodListResponse::Quote::Instant::OrHash
                )
            ).void
          end
          attr_writer :instant

          # Maximum withdrawal amount for this method, in the withdrawal currency.
          sig { returns(T.nilable(Float)) }
          attr_accessor :max_limit

          # Minimum withdrawal amount for this method, in the withdrawal currency.
          sig { returns(Float) }
          attr_accessor :min_limit

          # Standard-delivery estimate. Null if the method does not support standard
          # delivery, or the amount does not cover the fee.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Payouts::MethodListResponse::Quote::Standard
              )
            )
          end
          attr_reader :standard

          sig do
            params(
              standard:
                T.nilable(
                  WhopSDK::Models::Payouts::MethodListResponse::Quote::Standard::OrHash
                )
            ).void
          end
          attr_writer :standard

          # Fee and delivery estimate for withdrawing the requested amount through this
          # method. Null unless an amount was provided, or when the estimate is unavailable.
          sig do
            params(
              amount: Float,
              currency: String,
              exchange_rate: Float,
              instant:
                T.nilable(
                  WhopSDK::Models::Payouts::MethodListResponse::Quote::Instant::OrHash
                ),
              max_limit: T.nilable(Float),
              min_limit: Float,
              standard:
                T.nilable(
                  WhopSDK::Models::Payouts::MethodListResponse::Quote::Standard::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The withdrawal amount the quote is for.
            amount:,
            # Currency of the quoted amount.
            currency:,
            # Exchange rate from the withdrawal currency to the destination currency.
            exchange_rate:,
            # Instant-delivery estimate. Null if the method does not support instant delivery,
            # instant delivery is unavailable for the account, or the amount does not cover
            # the fee.
            instant:,
            # Maximum withdrawal amount for this method, in the withdrawal currency.
            max_limit:,
            # Minimum withdrawal amount for this method, in the withdrawal currency.
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
                    WhopSDK::Models::Payouts::MethodListResponse::Quote::Instant
                  ),
                max_limit: T.nilable(Float),
                min_limit: Float,
                standard:
                  T.nilable(
                    WhopSDK::Models::Payouts::MethodListResponse::Quote::Standard
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
                  WhopSDK::Models::Payouts::MethodListResponse::Quote::Instant,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Estimated time the funds become available.
            sig { returns(Time) }
            attr_accessor :estimated_arrival

            # Total fee charged, in the withdrawal currency.
            sig { returns(Float) }
            attr_accessor :fee

            # Amount delivered after fees, in the withdrawal currency.
            sig { returns(Float) }
            attr_accessor :total_received

            # Instant-delivery estimate. Null if the method does not support instant delivery,
            # instant delivery is unavailable for the account, or the amount does not cover
            # the fee.
            sig do
              params(
                estimated_arrival: Time,
                fee: Float,
                total_received: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Estimated time the funds become available.
              estimated_arrival:,
              # Total fee charged, in the withdrawal currency.
              fee:,
              # Amount delivered after fees, in the withdrawal currency.
              total_received:
            )
            end

            sig do
              override.returns(
                { estimated_arrival: Time, fee: Float, total_received: Float }
              )
            end
            def to_hash
            end
          end

          class Standard < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Payouts::MethodListResponse::Quote::Standard,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Estimated time the funds become available.
            sig { returns(Time) }
            attr_accessor :estimated_arrival

            # Total fee charged, in the withdrawal currency.
            sig { returns(Float) }
            attr_accessor :fee

            # Amount delivered after fees, in the withdrawal currency.
            sig { returns(Float) }
            attr_accessor :total_received

            # Standard-delivery estimate. Null if the method does not support standard
            # delivery, or the amount does not cover the fee.
            sig do
              params(
                estimated_arrival: Time,
                fee: Float,
                total_received: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Estimated time the funds become available.
              estimated_arrival:,
              # Total fee charged, in the withdrawal currency.
              fee:,
              # Amount delivered after fees, in the withdrawal currency.
              total_received:
            )
            end

            sig do
              override.returns(
                { estimated_arrival: Time, fee: Float, total_received: Float }
              )
            end
            def to_hash
            end
          end
        end

        # Lifecycle status: `created` means saved but unused, `active` means a payout
        # succeeded through it, `broken` means the last payout failed.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::Payouts::MethodListResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              WhopSDK::Models::Payouts::MethodListResponse::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              WhopSDK::Models::Payouts::MethodListResponse::Status::TaggedSymbol
            )
          BROKEN =
            T.let(
              :broken,
              WhopSDK::Models::Payouts::MethodListResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::Payouts::MethodListResponse::Status::TaggedSymbol
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
