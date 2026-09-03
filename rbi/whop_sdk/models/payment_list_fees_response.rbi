# typed: strong

module WhopSDK
  module Models
    class PaymentListFeesResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PaymentListFeesResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[WhopSDK::Models::PaymentListFeesResponse::Data]) }
      attr_accessor :data

      sig { returns(WhopSDK::Models::PaymentListFeesResponse::PageInfo) }
      attr_reader :page_info

      sig do
        params(
          page_info: WhopSDK::Models::PaymentListFeesResponse::PageInfo::OrHash
        ).void
      end
      attr_writer :page_info

      sig do
        params(
          data:
            T::Array[WhopSDK::Models::PaymentListFeesResponse::Data::OrHash],
          page_info: WhopSDK::Models::PaymentListFeesResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, page_info:)
      end

      sig do
        override.returns(
          {
            data: T::Array[WhopSDK::Models::PaymentListFeesResponse::Data],
            page_info: WhopSDK::Models::PaymentListFeesResponse::PageInfo
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentListFeesResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The fee in the currency it was collected in.
        sig { returns(WhopSDK::Models::PaymentListFeesResponse::Data::Amount) }
        attr_reader :amount

        sig do
          params(
            amount:
              WhopSDK::Models::PaymentListFeesResponse::Data::Amount::OrHash
          ).void
        end
        attr_writer :amount

        # When the fee was collected, as an ISO 8601 timestamp, or null when it has not
        # been.
        sig { returns(T.nilable(String)) }
        attr_accessor :collected_at

        # A longer explanation of the fee, when there is one.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The name the dashboard shows for this fee.
        sig { returns(String) }
        attr_accessor :label

        # The specific fee this line is, such as `payment_processing_percentage_fee` or
        # `revshare_percentage_fee`.
        sig do
          returns(
            WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
          )
        end
        attr_accessor :origin

        # The fee converted to the payment's settlement currency, so lines can be totalled
        # against the payment.
        sig do
          returns(
            WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount
          )
        end
        attr_reader :settlement_amount

        sig do
          params(
            settlement_amount:
              WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount::OrHash
          ).void
        end
        attr_writer :settlement_amount

        # The family the fee belongs to: `whop_fee`, `processing_fee`,
        # `affiliate_program_fee`, or `other_fee`.
        sig do
          returns(
            WhopSDK::Models::PaymentListFeesResponse::Data::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            amount:
              WhopSDK::Models::PaymentListFeesResponse::Data::Amount::OrHash,
            collected_at: T.nilable(String),
            description: T.nilable(String),
            label: String,
            origin:
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::OrSymbol,
            settlement_amount:
              WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount::OrHash,
            type: WhopSDK::Models::PaymentListFeesResponse::Data::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The fee in the currency it was collected in.
          amount:,
          # When the fee was collected, as an ISO 8601 timestamp, or null when it has not
          # been.
          collected_at:,
          # A longer explanation of the fee, when there is one.
          description:,
          # The name the dashboard shows for this fee.
          label:,
          # The specific fee this line is, such as `payment_processing_percentage_fee` or
          # `revshare_percentage_fee`.
          origin:,
          # The fee converted to the payment's settlement currency, so lines can be totalled
          # against the payment.
          settlement_amount:,
          # The family the fee belongs to: `whop_fee`, `processing_fee`,
          # `affiliate_program_fee`, or `other_fee`.
          type:
        )
        end

        sig do
          override.returns(
            {
              amount: WhopSDK::Models::PaymentListFeesResponse::Data::Amount,
              collected_at: T.nilable(String),
              description: T.nilable(String),
              label: String,
              origin:
                WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol,
              settlement_amount:
                WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount,
              type:
                WhopSDK::Models::PaymentListFeesResponse::Data::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Amount < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentListFeesResponse::Data::Amount,
                WhopSDK::Internal::AnyHash
              )
            end

          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          sig { returns(String) }
          attr_accessor :amount

          # Three-letter ISO 4217 currency code, lowercase.
          sig { returns(String) }
          attr_accessor :currency

          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          sig { returns(Integer) }
          attr_accessor :decimals

          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          sig { returns(Integer) }
          attr_accessor :display_decimals

          # The fee in the currency it was collected in.
          sig do
            params(
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount in major units, as an exact decimal string — `"10.00"` is ten
            # dollars. A string so no float rounds it in transit.
            amount:,
            # Three-letter ISO 4217 currency code, lowercase.
            currency:,
            # How many decimal places the amount CARRIES — the precision the charge itself
            # runs at.
            decimals:,
            # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
            # not always: COP is charged in centavos but written in whole pesos, so it is `2`
            # and `0`. Format the number in your own locale using this.
            display_decimals:
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                currency: String,
                decimals: Integer,
                display_decimals: Integer
              }
            )
          end
          def to_hash
          end
        end

        # The specific fee this line is, such as `payment_processing_percentage_fee` or
        # `revshare_percentage_fee`.
        module Origin
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::PaymentListFeesResponse::Data::Origin
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE_DOMESTIC_PROCESSING_FEE =
            T.let(
              :stripe_domestic_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          STRIPE_INTERNATIONAL_PROCESSING_FEE =
            T.let(
              :stripe_international_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          STRIPE_FIXED_PROCESSING_FEE =
            T.let(
              :stripe_fixed_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          STRIPE_BILLING_FEE =
            T.let(
              :stripe_billing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          STRIPE_RADAR_FEE =
            T.let(
              :stripe_radar_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          SALES_TAX_REMITTANCE =
            T.let(
              :sales_tax_remittance,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          SALES_TAX_REMITTANCE_REVERSAL =
            T.let(
              :sales_tax_remittance_reversal,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          STRIPE_SALES_TAX_FEE =
            T.let(
              :stripe_sales_tax_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          WHOP_PROCESSING_FEE =
            T.let(
              :whop_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          MARKETPLACE_AFFILIATE_FEE =
            T.let(
              :marketplace_affiliate_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          AFFILIATE_FEE =
            T.let(
              :affiliate_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          CRYPTO_FEE =
            T.let(
              :crypto_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          STRIPE_STANDARD_PROCESSING_FEE =
            T.let(
              :stripe_standard_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          PAYPAL_FEE =
            T.let(
              :paypal_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          STRIPE_PAYOUT_FEE =
            T.let(
              :stripe_payout_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          DISPUTE_FEE =
            T.let(
              :dispute_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          DISPUTE_ALERT_FEE =
            T.let(
              :dispute_alert_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          DISPUTE_REPRESENTMENT_FEE =
            T.let(
              :dispute_representment_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          APPLE_PROCESSING_FEE =
            T.let(
              :apple_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          BUYER_FEE =
            T.let(
              :buyer_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          SEZZLE_PROCESSING_FEE =
            T.let(
              :sezzle_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          SPLITIT_PROCESSING_FEE =
            T.let(
              :splitit_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          PLATFORM_BALANCE_PROCESSING_FEE =
            T.let(
              :platform_balance_processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          PAYMENT_PROCESSING_PERCENTAGE_FEE =
            T.let(
              :payment_processing_percentage_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          PAYMENT_PROCESSING_FIXED_FEE =
            T.let(
              :payment_processing_fixed_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          CROSS_BORDER_PERCENTAGE_FEE =
            T.let(
              :cross_border_percentage_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          FX_PERCENTAGE_FEE =
            T.let(
              :fx_percentage_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          ORCHESTRATION_PERCENTAGE_FEE =
            T.let(
              :orchestration_percentage_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          THREE_DS_FIXED_FEE =
            T.let(
              :three_ds_fixed_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          BILLING_PERCENTAGE_FEE =
            T.let(
              :billing_percentage_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          REVSHARE_PERCENTAGE_FEE =
            T.let(
              :revshare_percentage_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          APPLICATION_FEE =
            T.let(
              :application_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )
          HIGH_RISK_MERCHANT_FEE =
            T.let(
              :high_risk_merchant_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::PaymentListFeesResponse::Data::Origin::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SettlementAmount < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount,
                WhopSDK::Internal::AnyHash
              )
            end

          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          sig { returns(String) }
          attr_accessor :amount

          # Three-letter ISO 4217 currency code, lowercase.
          sig { returns(String) }
          attr_accessor :currency

          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          sig { returns(Integer) }
          attr_accessor :decimals

          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          sig { returns(Integer) }
          attr_accessor :display_decimals

          # The fee converted to the payment's settlement currency, so lines can be totalled
          # against the payment.
          sig do
            params(
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount in major units, as an exact decimal string — `"10.00"` is ten
            # dollars. A string so no float rounds it in transit.
            amount:,
            # Three-letter ISO 4217 currency code, lowercase.
            currency:,
            # How many decimal places the amount CARRIES — the precision the charge itself
            # runs at.
            decimals:,
            # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
            # not always: COP is charged in centavos but written in whole pesos, so it is `2`
            # and `0`. Format the number in your own locale using this.
            display_decimals:
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                currency: String,
                decimals: Integer,
                display_decimals: Integer
              }
            )
          end
          def to_hash
          end
        end

        # The family the fee belongs to: `whop_fee`, `processing_fee`,
        # `affiliate_program_fee`, or `other_fee`.
        module Type
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::PaymentListFeesResponse::Data::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHOP_FEE =
            T.let(
              :whop_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Type::TaggedSymbol
            )
          PROCESSING_FEE =
            T.let(
              :processing_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Type::TaggedSymbol
            )
          AFFILIATE_PROGRAM_FEE =
            T.let(
              :affiliate_program_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Type::TaggedSymbol
            )
          OTHER_FEE =
            T.let(
              :other_fee,
              WhopSDK::Models::PaymentListFeesResponse::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::PaymentListFeesResponse::Data::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class PageInfo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentListFeesResponse::PageInfo,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        sig { returns(T::Boolean) }
        attr_accessor :has_previous_page

        sig { returns(T.nilable(String)) }
        attr_accessor :start_cursor

        sig do
          params(
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            start_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          end_cursor:,
          has_next_page:,
          has_previous_page:,
          start_cursor:
        )
        end

        sig do
          override.returns(
            {
              end_cursor: T.nilable(String),
              has_next_page: T::Boolean,
              has_previous_page: T::Boolean,
              start_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
