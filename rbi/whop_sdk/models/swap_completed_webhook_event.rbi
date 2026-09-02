# typed: strong

module WhopSDK
  module Models
    class SwapCompletedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::SwapCompletedWebhookEvent, WhopSDK::Internal::AnyHash)
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

      sig { returns(WhopSDK::SwapCompletedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::SwapCompletedWebhookEvent::Data::OrHash).void
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
          data: WhopSDK::SwapCompletedWebhookEvent::Data::OrHash,
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
        type: :"swap.completed"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::SwapCompletedWebhookEvent::Data,
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
              WhopSDK::SwapCompletedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Ledger activity ID.
        sig { returns(String) }
        attr_accessor :id

        # Signed amount in the currency's smallest precision units.
        sig { returns(String) }
        attr_accessor :amount

        # ISO 8601 timestamp these funds became (or are scheduled to become) withdrawable:
        # the posted time for already-settled funds, or 00:00:00 UTC on the scheduled
        # release date for pending funds. Present only on inflows entering the balance
        # (payments, top-ups, incoming transfers/affiliate); null on payouts, refunds,
        # disputes and on-chain rows. The available_after/before filters window on its UTC
        # settlement date.
        sig { returns(T.nilable(Time)) }
        attr_accessor :available_at

        # Currency for this ledger activity.
        sig { returns(WhopSDK::SwapCompletedWebhookEvent::Data::Currency) }
        attr_reader :currency

        sig do
          params(
            currency: WhopSDK::SwapCompletedWebhookEvent::Data::Currency::OrHash
          ).void
        end
        attr_writer :currency

        # The ledger line category this activity was posted under.
        sig do
          returns(
            WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
          )
        end
        attr_accessor :line_type

        sig do
          returns(
            WhopSDK::SwapCompletedWebhookEvent::Data::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # When the activity posted to the ledger.
        sig { returns(Time) }
        attr_accessor :posted_at

        # Resource associated with this ledger activity.
        sig do
          returns(
            T.nilable(
              WhopSDK::SwapCompletedWebhookEvent::Data::Resource::Variants
            )
          )
        end
        attr_accessor :resource

        # Source of this ledger activity.
        sig do
          returns(T.nilable(WhopSDK::SwapCompletedWebhookEvent::Data::Source))
        end
        attr_reader :source

        sig do
          params(
            source:
              T.nilable(
                WhopSDK::SwapCompletedWebhookEvent::Data::Source::OrHash
              )
          ).void
        end
        attr_writer :source

        # Dollar value of this movement as a decimal string, signed like `amount`.
        # Converted from the posted amount at the rate that was live when the line posted
        # — the same pricing the wallet balance chart and the financial reports use — so a
        # crypto row carries its dollar value too. `null` for a currency Whop holds no
        # exchange rate for.
        sig { returns(T.nilable(String)) }
        attr_accessor :usd_amount

        # The viewer account that owns this row's ledger. Present only when the response
        # aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
        sig do
          returns(
            T.nilable(
              WhopSDK::SwapCompletedWebhookEvent::Data::Account::Variants
            )
          )
        end
        attr_reader :account

        sig do
          params(
            account:
              T.any(
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0::OrHash,
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1::OrHash
              )
          ).void
        end
        attr_writer :account

        # The ledger account (a ldgr\_ identifier) this row belongs to. Present only when
        # the response aggregates owned accounts (include_owned_accounts=true); omitted
        # otherwise. Pair it with `account` to scope drawers and dashboard links to the
        # owning business.
        sig { returns(T.nilable(String)) }
        attr_accessor :ledger_account_id

        # Payment related to this ledger activity. Included when rich resource hydration
        # is enabled and the movement is tied to a payment.
        sig do
          returns(T.nilable(WhopSDK::SwapCompletedWebhookEvent::Data::Payment))
        end
        attr_reader :payment

        sig do
          params(
            payment:
              T.nilable(
                WhopSDK::SwapCompletedWebhookEvent::Data::Payment::OrHash
              )
          ).void
        end
        attr_writer :payment

        # Payment ID for any payment-related activity, including refunds and disputes.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_id

        # ID of the plan associated with the payment, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :plan_id

        # Name of the plan associated with the payment, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :plan_name

        # ID of the product associated with the payment, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_id

        # Name of the product associated with the payment, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_name

        # Email of the customer associated with the payment. Requires member:email:read.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_email

        # ID of the customer associated with the payment.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_id

        # Display name of the customer associated with the payment.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_name

        sig do
          params(
            id: String,
            amount: String,
            available_at: T.nilable(Time),
            currency:
              WhopSDK::SwapCompletedWebhookEvent::Data::Currency::OrHash,
            line_type:
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::OrSymbol,
            object: WhopSDK::SwapCompletedWebhookEvent::Data::Object::OrSymbol,
            posted_at: Time,
            resource:
              T.nilable(
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0::OrHash,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1::OrHash,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2::OrHash,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::OrHash,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::OrHash,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5::OrHash,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6::OrHash
                )
              ),
            source:
              T.nilable(
                WhopSDK::SwapCompletedWebhookEvent::Data::Source::OrHash
              ),
            usd_amount: T.nilable(String),
            account:
              T.any(
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0::OrHash,
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1::OrHash
              ),
            ledger_account_id: T.nilable(String),
            payment:
              T.nilable(
                WhopSDK::SwapCompletedWebhookEvent::Data::Payment::OrHash
              ),
            payment_id: T.nilable(String),
            plan_id: T.nilable(String),
            plan_name: T.nilable(String),
            product_id: T.nilable(String),
            product_name: T.nilable(String),
            user_email: T.nilable(String),
            user_id: T.nilable(String),
            user_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Ledger activity ID.
          id:,
          # Signed amount in the currency's smallest precision units.
          amount:,
          # ISO 8601 timestamp these funds became (or are scheduled to become) withdrawable:
          # the posted time for already-settled funds, or 00:00:00 UTC on the scheduled
          # release date for pending funds. Present only on inflows entering the balance
          # (payments, top-ups, incoming transfers/affiliate); null on payouts, refunds,
          # disputes and on-chain rows. The available_after/before filters window on its UTC
          # settlement date.
          available_at:,
          # Currency for this ledger activity.
          currency:,
          # The ledger line category this activity was posted under.
          line_type:,
          object:,
          # When the activity posted to the ledger.
          posted_at:,
          # Resource associated with this ledger activity.
          resource:,
          # Source of this ledger activity.
          source:,
          # Dollar value of this movement as a decimal string, signed like `amount`.
          # Converted from the posted amount at the rate that was live when the line posted
          # — the same pricing the wallet balance chart and the financial reports use — so a
          # crypto row carries its dollar value too. `null` for a currency Whop holds no
          # exchange rate for.
          usd_amount:,
          # The viewer account that owns this row's ledger. Present only when the response
          # aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
          account: nil,
          # The ledger account (a ldgr\_ identifier) this row belongs to. Present only when
          # the response aggregates owned accounts (include_owned_accounts=true); omitted
          # otherwise. Pair it with `account` to scope drawers and dashboard links to the
          # owning business.
          ledger_account_id: nil,
          # Payment related to this ledger activity. Included when rich resource hydration
          # is enabled and the movement is tied to a payment.
          payment: nil,
          # Payment ID for any payment-related activity, including refunds and disputes.
          payment_id: nil,
          # ID of the plan associated with the payment, when applicable.
          plan_id: nil,
          # Name of the plan associated with the payment, when applicable.
          plan_name: nil,
          # ID of the product associated with the payment, when applicable.
          product_id: nil,
          # Name of the product associated with the payment, when applicable.
          product_name: nil,
          # Email of the customer associated with the payment. Requires member:email:read.
          user_email: nil,
          # ID of the customer associated with the payment.
          user_id: nil,
          # Display name of the customer associated with the payment.
          user_name: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              available_at: T.nilable(Time),
              currency: WhopSDK::SwapCompletedWebhookEvent::Data::Currency,
              line_type:
                WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol,
              object:
                WhopSDK::SwapCompletedWebhookEvent::Data::Object::TaggedSymbol,
              posted_at: Time,
              resource:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::Variants
                ),
              source:
                T.nilable(WhopSDK::SwapCompletedWebhookEvent::Data::Source),
              usd_amount: T.nilable(String),
              account:
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::Variants,
              ledger_account_id: T.nilable(String),
              payment:
                T.nilable(WhopSDK::SwapCompletedWebhookEvent::Data::Payment),
              payment_id: T.nilable(String),
              plan_id: T.nilable(String),
              plan_name: T.nilable(String),
              product_id: T.nilable(String),
              product_name: T.nilable(String),
              user_email: T.nilable(String),
              user_id: T.nilable(String),
              user_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Currency < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SwapCompletedWebhookEvent::Data::Currency,
                WhopSDK::Internal::AnyHash
              )
            end

          # Currency code.
          sig { returns(String) }
          attr_accessor :code

          # Precision factor for the currency, for example `100000000` for USD.
          sig { returns(String) }
          attr_accessor :precision

          # Currency for this ledger activity.
          sig do
            params(code: String, precision: String).returns(T.attached_class)
          end
          def self.new(
            # Currency code.
            code:,
            # Precision factor for the currency, for example `100000000` for USD.
            precision:
          )
          end

          sig { override.returns({ code: String, precision: String }) }
          def to_hash
          end
        end

        # The ledger line category this activity was posted under.
        module LineType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::SwapCompletedWebhookEvent::Data::LineType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_BUDGET_RELEASE =
            T.let(
              :ad_budget_release,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AD_CAMPAIGN_BUDGET =
            T.let(
              :ad_campaign_budget,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AD_PUBLISHER_PAYOUT =
            T.let(
              :ad_publisher_payout,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AD_PUBLISHER_PAYOUT_RECEIVED =
            T.let(
              :ad_publisher_payout_received,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AD_SPEND_CHARGE =
            T.let(
              :ad_spend_charge,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AFFILIATE_FEE =
            T.let(
              :affiliate_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AIRDROP =
            T.let(
              :airdrop,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AIRDROP_LINK_CREATED =
            T.let(
              :airdrop_link_created,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AIRDROP_LINK_REDEEMED =
            T.let(
              :airdrop_link_redeemed,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AIRDROP_LINK_RETURNED =
            T.let(
              :airdrop_link_returned,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          AIRDROP_REVERSAL =
            T.let(
              :airdrop_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          APPLICATION_FEE =
            T.let(
              :application_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          APPLICATION_FEE_PAYOUT =
            T.let(
              :application_fee_payout,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          BALANCE_RESERVATION =
            T.let(
              :balance_reservation,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          BALANCE_RESERVATION_REVERSAL =
            T.let(
              :balance_reservation_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          BANK_TRANSFER =
            T.let(
              :bank_transfer,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          BILLING_PERCENTAGE_FEE =
            T.let(
              :billing_percentage_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          BUYER_FEE =
            T.let(
              :buyer_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CARD_INTERCHANGE =
            T.let(
              :card_interchange,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CARD_LOAD_DEPOSIT =
            T.let(
              :card_load_deposit,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CARD_LOAD_TRANSFER =
            T.let(
              :card_load_transfer,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CARD_SPEND_AUTHORIZATION =
            T.let(
              :card_spend_authorization,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CARD_SPEND_AUTHORIZATION_VOID =
            T.let(
              :card_spend_authorization_void,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CARD_SPEND_REFUND =
            T.let(
              :card_spend_refund,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CARD_UNLOAD_DEPOSIT =
            T.let(
              :card_unload_deposit,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CARD_UNLOAD_TRANSFER =
            T.let(
              :card_unload_transfer,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          COMPANY_REFERRAL =
            T.let(
              :company_referral,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CONNECTED_ACCOUNT_NEGATIVE_BALANCE =
            T.let(
              :connected_account_negative_balance,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CROSS_BORDER_PERCENTAGE_FEE =
            T.let(
              :cross_border_percentage_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CURRENCY_CONVERSION_INCOMING =
            T.let(
              :currency_conversion_incoming,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          CURRENCY_CONVERSION_OUTGOING =
            T.let(
              :currency_conversion_outgoing,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          DISPUTE_ALERT_FEE =
            T.let(
              :dispute_alert_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          DISPUTE_HOLD_ADJUSTMENT =
            T.let(
              :dispute_hold_adjustment,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          DISPUTE_REPRESENTMENT_FEE =
            T.let(
              :dispute_representment_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          EXTERNAL_CARD_LOAD_DEPOSIT =
            T.let(
              :external_card_load_deposit,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          FRAUD_PREVENTION_FEE =
            T.let(
              :fraud_prevention_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          FX_PERCENTAGE_FEE =
            T.let(
              :fx_percentage_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          HIGH_RISK_MERCHANT_FEE =
            T.let(
              :high_risk_merchant_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INSTALLMENT_DEFAULT =
            T.let(
              :installment_default,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_BALANCE_TRANSFER_INCOMING =
            T.let(
              :internal_balance_transfer_incoming,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_BALANCE_TRANSFER_OUTGOING =
            T.let(
              :internal_balance_transfer_outgoing,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL =
            T.let(
              :internal_withdrawal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_COMPLETE =
            T.let(
              :internal_withdrawal_complete,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_FEE =
            T.let(
              :internal_withdrawal_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_FEE_REVERSAL =
            T.let(
              :internal_withdrawal_fee_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_IN_TRANSIT =
            T.let(
              :internal_withdrawal_in_transit,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_IN_TRANSIT_REVERSAL =
            T.let(
              :internal_withdrawal_in_transit_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_MARKUP_FEE =
            T.let(
              :internal_withdrawal_markup_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_MARKUP_FEE_PAYOUT =
            T.let(
              :internal_withdrawal_markup_fee_payout,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_MARKUP_FEE_PAYOUT_REVERSAL =
            T.let(
              :internal_withdrawal_markup_fee_payout_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_MARKUP_FEE_REVERSAL =
            T.let(
              :internal_withdrawal_markup_fee_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          INTERNAL_WITHDRAWAL_REVERSAL =
            T.let(
              :internal_withdrawal_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          LEGACY_CRYPTO_PAYMENT =
            T.let(
              :legacy_crypto_payment,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          LEGACY_PAYMENT =
            T.let(
              :legacy_payment,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          LEGACY_PAYMENT_REFUND =
            T.let(
              :legacy_payment_refund,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          LICENSE_SALE =
            T.let(
              :license_sale,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          LICENSE_SALE_COMMISSION =
            T.let(
              :license_sale_commission,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          LICENSE_SALE_REVENUE =
            T.let(
              :license_sale_revenue,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          MARKETPLACE_AFFILIATE_FEE =
            T.let(
              :marketplace_affiliate_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          MISC_PURCHASE =
            T.let(
              :misc_purchase,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          MISC_REFUND =
            T.let(
              :misc_refund,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          MISC_REVERSAL =
            T.let(
              :misc_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          ONBOARDING_REWARD =
            T.let(
              :onboarding_reward,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          ONCHAIN_DEPOSIT =
            T.let(
              :onchain_deposit,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          ONCHAIN_SWAP_SOURCE =
            T.let(
              :onchain_swap_source,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          ONCHAIN_SWAP_TARGET =
            T.let(
              :onchain_swap_target,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          ONCHAIN_WALLET_TRANSFER_INCOMING =
            T.let(
              :onchain_wallet_transfer_incoming,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          ONCHAIN_WALLET_TRANSFER_OUTGOING =
            T.let(
              :onchain_wallet_transfer_outgoing,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          ONCHAIN_WITHDRAWAL =
            T.let(
              :onchain_withdrawal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          ORCHESTRATION_PERCENTAGE_FEE =
            T.let(
              :orchestration_percentage_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PASSTHROUGH_GMV =
            T.let(
              :passthrough_gmv,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_DISPUTE =
            T.let(
              :payment_dispute,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_DISPUTE_ADJUSTMENT =
            T.let(
              :payment_dispute_adjustment,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_DISPUTE_FEE =
            T.let(
              :payment_dispute_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_DISPUTE_REVERSAL =
            T.let(
              :payment_dispute_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_GROSS =
            T.let(
              :payment_gross,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_GROSS_REVERSAL =
            T.let(
              :payment_gross_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_PROCESSING_FIXED_FEE =
            T.let(
              :payment_processing_fixed_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_PROCESSING_PERCENTAGE_FEE =
            T.let(
              :payment_processing_percentage_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REFERRAL =
            T.let(
              :payment_referral,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REFERRAL_REFUND =
            T.let(
              :payment_referral_refund,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REFERRAL_REVERSAL =
            T.let(
              :payment_referral_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REFUND =
            T.let(
              :payment_refund,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REFUND_REVERSAL =
            T.let(
              :payment_refund_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REVSHARE =
            T.let(
              :payment_revshare,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REVSHARE_PAYOUT =
            T.let(
              :payment_revshare_payout,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REVSHARE_REFUND =
            T.let(
              :payment_revshare_refund,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYMENT_REVSHARE_REVERSAL =
            T.let(
              :payment_revshare_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PAYOUT_FEE =
            T.let(
              :payout_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_AFFILIATE_PAYMENT =
            T.let(
              :platform_affiliate_payment,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_AFFILIATE_PAYMENT_REVERSAL =
            T.let(
              :platform_affiliate_payment_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_BALANCE_PAYMENT =
            T.let(
              :platform_balance_payment,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_BALANCE_PAYMENT_REFUND =
            T.let(
              :platform_balance_payment_refund,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_BALANCE_TRANSFER_FEE =
            T.let(
              :platform_balance_transfer_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_BALANCE_TRANSFER_INCOMING =
            T.let(
              :platform_balance_transfer_incoming,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_BALANCE_TRANSFER_OUTGOING =
            T.let(
              :platform_balance_transfer_outgoing,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_COVERED_DISPUTE =
            T.let(
              :platform_covered_dispute,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PLATFORM_EARNING =
            T.let(
              :platform_earning,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          PROMO_REVERSAL =
            T.let(
              :promo_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          REFERRAL_BONUS =
            T.let(
              :referral_bonus,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          RESOLUTION_CENTER_REFUND =
            T.let(
              :resolution_center_refund,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          REVSHARE_PERCENTAGE_FEE =
            T.let(
              :revshare_percentage_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          SALES_TAX_FEE =
            T.let(
              :sales_tax_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          SALES_TAX_REMITTANCE =
            T.let(
              :sales_tax_remittance,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          SALES_TAX_REMITTANCE_REVERSAL =
            T.let(
              :sales_tax_remittance_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          SOFTWARE_RENTAL_REVSHARE =
            T.let(
              :software_rental_revshare,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          SOFTWARE_RENTAL_TRANSACTION =
            T.let(
              :software_rental_transaction,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          STRIPE_DOMESTIC_PROCESSING_FEE =
            T.let(
              :stripe_domestic_processing_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          STRIPE_INTERNATIONAL_PROCESSING_FEE =
            T.let(
              :stripe_international_processing_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          SWAP_FEE =
            T.let(
              :swap_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          THREE_DS_FIXED_FEE =
            T.let(
              :three_ds_fixed_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          TOPUP =
            T.let(
              :topup,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          TOPUP_FEE =
            T.let(
              :topup_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          TOPUP_REVERSAL =
            T.let(
              :topup_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          TREASURY_PAYIN =
            T.let(
              :treasury_payin,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WHOP_PROCESSING_FEE =
            T.let(
              :whop_processing_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL =
            T.let(
              :withdrawal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_CLAWBACK =
            T.let(
              :withdrawal_clawback,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_CLAWBACK_REVERSAL =
            T.let(
              :withdrawal_clawback_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_FEE =
            T.let(
              :withdrawal_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_FEE_REVERSAL =
            T.let(
              :withdrawal_fee_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_MARKUP_FEE =
            T.let(
              :withdrawal_markup_fee,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_MARKUP_FEE_PAYOUT =
            T.let(
              :withdrawal_markup_fee_payout,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_MARKUP_FEE_PAYOUT_REVERSAL =
            T.let(
              :withdrawal_markup_fee_payout_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_MARKUP_FEE_REVERSAL =
            T.let(
              :withdrawal_markup_fee_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_RECLASSIFICATION =
            T.let(
              :withdrawal_reclassification,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_REVERSAL =
            T.let(
              :withdrawal_reversal,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )
          WITHDRAWAL_TOPUP_ADJUSTMENT =
            T.let(
              :withdrawal_topup_adjustment,
              WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::SwapCompletedWebhookEvent::Data::LineType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::SwapCompletedWebhookEvent::Data::Object)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEDGER_ACTIVITY =
            T.let(
              :ledger_activity,
              WhopSDK::SwapCompletedWebhookEvent::Data::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::SwapCompletedWebhookEvent::Data::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Resource associated with this ledger activity.
        module Resource
          extend WhopSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0,
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1,
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2,
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3,
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4,
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5,
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6
              )
            end

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Account ID.
            sig { returns(String) }
            attr_accessor :id

            # Account logo URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :logo_url

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Account route.
            sig { returns(T.nilable(String)) }
            attr_accessor :route

            # Account display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :title

            sig do
              params(
                id: String,
                logo_url: T.nilable(String),
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0::Object::OrSymbol,
                route: T.nilable(String),
                title: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Account ID.
              id:,
              # Account logo URL.
              logo_url:,
              object:,
              # Account route.
              route:,
              # Account display name.
              title:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  logo_url: T.nilable(String),
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0::Object::TaggedSymbol,
                  route: T.nilable(String),
                  title: T.nilable(String)
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCOUNT =
                T.let(
                  :account,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember0::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember1 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1,
                  WhopSDK::Internal::AnyHash
                )
              end

            # User ID.
            sig { returns(String) }
            attr_accessor :id

            # User display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # User profile image URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :profile_picture_url

            # User's username.
            sig { returns(T.nilable(String)) }
            attr_accessor :username

            sig do
              params(
                id: String,
                name: T.nilable(String),
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1::Object::OrSymbol,
                profile_picture_url: T.nilable(String),
                username: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # User ID.
              id:,
              # User display name.
              name:,
              object:,
              # User profile image URL.
              profile_picture_url:,
              # User's username.
              username:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: T.nilable(String),
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1::Object::TaggedSymbol,
                  profile_picture_url: T.nilable(String),
                  username: T.nilable(String)
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USER =
                T.let(
                  :user,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember1::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember2 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Bounty ID.
            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Bounty lifecycle status.
            sig { returns(String) }
            attr_accessor :status

            # Bounty title.
            sig { returns(String) }
            attr_accessor :title

            sig do
              params(
                id: String,
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2::Object::OrSymbol,
                status: String,
                title: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Bounty ID.
              id:,
              object:,
              # Bounty lifecycle status.
              status:,
              # Bounty title.
              title:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2::Object::TaggedSymbol,
                  status: String,
                  title: String
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BOUNTY =
                T.let(
                  :bounty,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember2::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember3 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Ledger account ID.
            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            sig do
              returns(
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::Variants
                )
              )
            end
            attr_accessor :owner

            sig do
              params(
                id: String,
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Object::OrSymbol,
                owner:
                  T.nilable(
                    T.any(
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::OrHash,
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::OrHash
                    )
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Ledger account ID.
              id:,
              object:,
              owner:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Object::TaggedSymbol,
                  owner:
                    T.nilable(
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::Variants
                    )
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LEDGER_ACCOUNT =
                T.let(
                  :ledger_account,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Owner
              extend WhopSDK::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0,
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1
                  )
                end

              class UnionMember0 < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Account ID.
                sig { returns(String) }
                attr_accessor :id

                # Account logo URL.
                sig { returns(T.nilable(String)) }
                attr_accessor :logo_url

                sig do
                  returns(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object::TaggedSymbol
                  )
                end
                attr_accessor :object

                # Account route.
                sig { returns(T.nilable(String)) }
                attr_accessor :route

                # Account display name.
                sig { returns(T.nilable(String)) }
                attr_accessor :title

                sig do
                  params(
                    id: String,
                    logo_url: T.nilable(String),
                    object:
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object::OrSymbol,
                    route: T.nilable(String),
                    title: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Account ID.
                  id:,
                  # Account logo URL.
                  logo_url:,
                  object:,
                  # Account route.
                  route:,
                  # Account display name.
                  title:
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      logo_url: T.nilable(String),
                      object:
                        WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object::TaggedSymbol,
                      route: T.nilable(String),
                      title: T.nilable(String)
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
                        WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ACCOUNT =
                    T.let(
                      :account,
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember1 < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # User ID.
                sig { returns(String) }
                attr_accessor :id

                # User display name.
                sig { returns(T.nilable(String)) }
                attr_accessor :name

                sig do
                  returns(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object::TaggedSymbol
                  )
                end
                attr_accessor :object

                # User profile image URL.
                sig { returns(T.nilable(String)) }
                attr_accessor :profile_picture_url

                # User's username.
                sig { returns(T.nilable(String)) }
                attr_accessor :username

                sig do
                  params(
                    id: String,
                    name: T.nilable(String),
                    object:
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object::OrSymbol,
                    profile_picture_url: T.nilable(String),
                    username: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # User ID.
                  id:,
                  # User display name.
                  name:,
                  object:,
                  # User profile image URL.
                  profile_picture_url:,
                  # User's username.
                  username:
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      name: T.nilable(String),
                      object:
                        WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object::TaggedSymbol,
                      profile_picture_url: T.nilable(String),
                      username: T.nilable(String)
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
                        WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USER =
                    T.let(
                      :user,
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember3::Owner::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          class UnionMember4 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Payment method ID.
            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Bank
                )
              )
            end
            attr_reader :bank

            sig do
              params(
                bank:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Bank::OrHash
                  )
              ).void
            end
            attr_writer :bank

            sig do
              returns(
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Card
                )
              )
            end
            attr_reader :card

            sig do
              params(
                card:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Card::OrHash
                  )
              ).void
            end
            attr_writer :card

            # Email identifier for email-based payment methods.
            sig { returns(T.nilable(String)) }
            attr_accessor :email_identifier

            # Payment gateway type.
            sig { returns(T.nilable(String)) }
            attr_accessor :gateway_type

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Payment method type.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_type

            sig do
              params(
                id: String,
                bank:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Bank::OrHash
                  ),
                card:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Card::OrHash
                  ),
                email_identifier: T.nilable(String),
                gateway_type: T.nilable(String),
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Object::OrSymbol,
                payment_method_type: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Payment method ID.
              id:,
              bank:,
              card:,
              # Email identifier for email-based payment methods.
              email_identifier:,
              # Payment gateway type.
              gateway_type:,
              object:,
              # Payment method type.
              payment_method_type:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  bank:
                    T.nilable(
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Bank
                    ),
                  card:
                    T.nilable(
                      WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Card
                    ),
                  email_identifier: T.nilable(String),
                  gateway_type: T.nilable(String),
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Object::TaggedSymbol,
                  payment_method_type: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Bank < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Bank,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Bank account holder name.
              sig { returns(T.nilable(String)) }
              attr_accessor :account_name

              # Bank account type.
              sig { returns(T.nilable(String)) }
              attr_accessor :account_type

              # Bank name.
              sig { returns(T.nilable(String)) }
              attr_accessor :bank_name

              # Last four digits of the bank account.
              sig { returns(T.nilable(String)) }
              attr_accessor :last4

              sig do
                params(
                  account_name: T.nilable(String),
                  account_type: T.nilable(String),
                  bank_name: T.nilable(String),
                  last4: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Bank account holder name.
                account_name:,
                # Bank account type.
                account_type:,
                # Bank name.
                bank_name:,
                # Last four digits of the bank account.
                last4:
              )
              end

              sig do
                override.returns(
                  {
                    account_name: T.nilable(String),
                    account_type: T.nilable(String),
                    bank_name: T.nilable(String),
                    last4: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Card < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Card,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Card brand.
              sig { returns(T.nilable(String)) }
              attr_accessor :brand

              # Card expiration month.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :exp_month

              # Card expiration year.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :exp_year

              # Last four digits of the card.
              sig { returns(T.nilable(String)) }
              attr_accessor :last4

              sig do
                params(
                  brand: T.nilable(String),
                  exp_month: T.nilable(Integer),
                  exp_year: T.nilable(Integer),
                  last4: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Card brand.
                brand:,
                # Card expiration month.
                exp_month:,
                # Card expiration year.
                exp_year:,
                # Last four digits of the card.
                last4:
              )
              end

              sig do
                override.returns(
                  {
                    brand: T.nilable(String),
                    exp_month: T.nilable(Integer),
                    exp_year: T.nilable(Integer),
                    last4: T.nilable(String)
                  }
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYMENT_METHOD =
                T.let(
                  :payment_method,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember4::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember5 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Payout method ID.
            sig { returns(String) }
            attr_accessor :id

            # Masked account reference.
            sig { returns(T.nilable(String)) }
            attr_accessor :account_reference

            # Destination currency code.
            sig { returns(T.nilable(String)) }
            attr_accessor :destination_currency_code

            # Payout institution name.
            sig { returns(T.nilable(String)) }
            attr_accessor :institution_name

            # Payout method nickname.
            sig { returns(T.nilable(String)) }
            attr_accessor :nickname

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Payout provider.
            sig { returns(T.nilable(String)) }
            attr_accessor :provider

            sig do
              params(
                id: String,
                account_reference: T.nilable(String),
                destination_currency_code: T.nilable(String),
                institution_name: T.nilable(String),
                nickname: T.nilable(String),
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5::Object::OrSymbol,
                provider: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Payout method ID.
              id:,
              # Masked account reference.
              account_reference:,
              # Destination currency code.
              destination_currency_code:,
              # Payout institution name.
              institution_name:,
              # Payout method nickname.
              nickname:,
              object:,
              # Payout provider.
              provider:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  account_reference: T.nilable(String),
                  destination_currency_code: T.nilable(String),
                  institution_name: T.nilable(String),
                  nickname: T.nilable(String),
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5::Object::TaggedSymbol,
                  provider: T.nilable(String)
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYOUT_METHOD =
                T.let(
                  :payout_method,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember5::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember6 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Card transaction ID.
            sig { returns(String) }
            attr_accessor :id

            # ISO 8601 timestamp the transaction was authorized.
            sig { returns(T.nilable(Time)) }
            attr_accessor :authorized_at

            # Identifier of the card that the transaction was charged to.
            sig { returns(T.nilable(String)) }
            attr_accessor :card_id

            # Cashback earned on this transaction as a USD decimal string. Zero for declined
            # or ineligible transactions; null when cashback has not been computed yet.
            sig { returns(T.nilable(String)) }
            attr_accessor :cashback_usd

            # Reason the transaction was declined (when status is declined).
            sig { returns(T.nilable(String)) }
            attr_accessor :declined_reason

            # Amount the merchant charged in their local currency, as a decimal string. Pair
            # with local_currency.
            sig { returns(T.nilable(String)) }
            attr_accessor :local_amount

            # ISO 4217 currency code of the merchant-charged amount in local_amount.
            sig { returns(T.nilable(String)) }
            attr_accessor :local_currency

            # Merchant category.
            sig { returns(T.nilable(String)) }
            attr_accessor :merchant_category

            # Merchant icon URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :merchant_icon_url

            # Merchant display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :merchant_name

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # ISO 8601 timestamp the transaction was settled by the card network.
            sig { returns(T.nilable(Time)) }
            attr_accessor :posted_at

            # Current card transaction status.
            sig { returns(T.nilable(String)) }
            attr_accessor :status

            # The processor-settled USD amount as a decimal string. The ledger's USDT leg is
            # posted 1:1 from this value.
            sig { returns(T.nilable(String)) }
            attr_accessor :usd_amount

            sig do
              params(
                id: String,
                authorized_at: T.nilable(Time),
                card_id: T.nilable(String),
                cashback_usd: T.nilable(String),
                declined_reason: T.nilable(String),
                local_amount: T.nilable(String),
                local_currency: T.nilable(String),
                merchant_category: T.nilable(String),
                merchant_icon_url: T.nilable(String),
                merchant_name: T.nilable(String),
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6::Object::OrSymbol,
                posted_at: T.nilable(Time),
                status: T.nilable(String),
                usd_amount: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Card transaction ID.
              id:,
              # ISO 8601 timestamp the transaction was authorized.
              authorized_at:,
              # Identifier of the card that the transaction was charged to.
              card_id:,
              # Cashback earned on this transaction as a USD decimal string. Zero for declined
              # or ineligible transactions; null when cashback has not been computed yet.
              cashback_usd:,
              # Reason the transaction was declined (when status is declined).
              declined_reason:,
              # Amount the merchant charged in their local currency, as a decimal string. Pair
              # with local_currency.
              local_amount:,
              # ISO 4217 currency code of the merchant-charged amount in local_amount.
              local_currency:,
              # Merchant category.
              merchant_category:,
              # Merchant icon URL.
              merchant_icon_url:,
              # Merchant display name.
              merchant_name:,
              object:,
              # ISO 8601 timestamp the transaction was settled by the card network.
              posted_at:,
              # Current card transaction status.
              status:,
              # The processor-settled USD amount as a decimal string. The ledger's USDT leg is
              # posted 1:1 from this value.
              usd_amount:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  authorized_at: T.nilable(Time),
                  card_id: T.nilable(String),
                  cashback_usd: T.nilable(String),
                  declined_reason: T.nilable(String),
                  local_amount: T.nilable(String),
                  local_currency: T.nilable(String),
                  merchant_category: T.nilable(String),
                  merchant_icon_url: T.nilable(String),
                  merchant_name: T.nilable(String),
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6::Object::TaggedSymbol,
                  posted_at: T.nilable(Time),
                  status: T.nilable(String),
                  usd_amount: T.nilable(String)
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CARD_TRANSACTION =
                T.let(
                  :card_transaction,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Resource::UnionMember6::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                WhopSDK::SwapCompletedWebhookEvent::Data::Resource::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Source < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SwapCompletedWebhookEvent::Data::Source,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :object

          # Payout amount as a decimal number in the destination currency (payout sources
          # only; requires payout:withdrawal:read).
          sig { returns(T.nilable(Float)) }
          attr_accessor :amount_float

          # Card brand used by the payment source.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_brand

          # Chain the deposit landed on, for example plasma (onchain_transaction sources
          # only).
          sig { returns(T.nilable(String)) }
          attr_accessor :chain

          # Public claim URL for the airdrop link (airdrop_link sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :claim_url

          # Payout creation time as an ISO 8601 timestamp (payout sources only; requires
          # payout:withdrawal:read).
          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at

          # Estimated arrival as an ISO 8601 timestamp (payout sources only; requires
          # payout:withdrawal:read).
          sig { returns(T.nilable(Time)) }
          attr_accessor :estimated_arrival

          # Amount converted out of from_currency as a decimal string (swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :from_amount

          # Lowercase currency code converted from (swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :from_currency

          # Name of the entity processing the payout (payout sources only; requires
          # payout:withdrawal:read).
          sig { returns(T.nilable(String)) }
          attr_accessor :payer_name

          # Total charged by the payment source.
          sig do
            returns(
              T.nilable(
                WhopSDK::SwapCompletedWebhookEvent::Data::Source::PaymentAmount
              )
            )
          end
          attr_reader :payment_amount

          sig do
            params(
              payment_amount:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Source::PaymentAmount::OrHash
                )
            ).void
          end
          attr_writer :payment_amount

          # Payment method used by the payment source.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_type

          # Processor used by the payment source.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_processor

          # Payout destination display info (payout sources only).
          sig do
            returns(
              T.nilable(
                WhopSDK::SwapCompletedWebhookEvent::Data::Source::PayoutDestination
              )
            )
          end
          attr_reader :payout_destination

          sig do
            params(
              payout_destination:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Source::PayoutDestination::OrHash
                )
            ).void
          end
          attr_writer :payout_destination

          # Saved payout destination nickname (payout sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :payout_token_nickname

          # Why the activity happened. On transfer sources this is the transfer reason, for
          # example pool_top_up or bounty_return. On payout sources it explains why the
          # payout was canceled, denied, or failed (requires payout:withdrawal:read); null
          # while the payout is progressing normally.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # Whether this payout is currently held for manual risk review (payout sources
          # only; requires payout:withdrawal:read).
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :risk_review_hold

          # Sender wallet address or onramp provider identifier (onchain_transaction sources
          # only).
          sig { returns(T.nilable(String)) }
          attr_accessor :sender_address

          # Lifecycle status. On payout sources this is the payout status (requires
          # payout:withdrawal:read); on airdrop_link sources it is the claim-link status
          # (ungated); on payment and top-up sources it is the friendly payment status such
          # as succeeded/pending/failed (ungated).
          sig { returns(T.nilable(String)) }
          attr_accessor :status

          # Amount received in to_currency as a decimal string (swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :to_amount

          # Lowercase currency code converted to (swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :to_currency

          # On-chain transaction hash (onchain_transaction and swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :tx_hash

          # Source of this ledger activity.
          sig do
            params(
              id: String,
              object: String,
              amount_float: T.nilable(Float),
              card_brand: T.nilable(String),
              chain: T.nilable(String),
              claim_url: T.nilable(String),
              created_at: T.nilable(Time),
              estimated_arrival: T.nilable(Time),
              from_amount: T.nilable(String),
              from_currency: T.nilable(String),
              payer_name: T.nilable(String),
              payment_amount:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Source::PaymentAmount::OrHash
                ),
              payment_method_type: T.nilable(String),
              payment_processor: T.nilable(String),
              payout_destination:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Source::PayoutDestination::OrHash
                ),
              payout_token_nickname: T.nilable(String),
              reason: T.nilable(String),
              risk_review_hold: T.nilable(T::Boolean),
              sender_address: T.nilable(String),
              status: T.nilable(String),
              to_amount: T.nilable(String),
              to_currency: T.nilable(String),
              tx_hash: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            object:,
            # Payout amount as a decimal number in the destination currency (payout sources
            # only; requires payout:withdrawal:read).
            amount_float: nil,
            # Card brand used by the payment source.
            card_brand: nil,
            # Chain the deposit landed on, for example plasma (onchain_transaction sources
            # only).
            chain: nil,
            # Public claim URL for the airdrop link (airdrop_link sources only).
            claim_url: nil,
            # Payout creation time as an ISO 8601 timestamp (payout sources only; requires
            # payout:withdrawal:read).
            created_at: nil,
            # Estimated arrival as an ISO 8601 timestamp (payout sources only; requires
            # payout:withdrawal:read).
            estimated_arrival: nil,
            # Amount converted out of from_currency as a decimal string (swap sources only).
            from_amount: nil,
            # Lowercase currency code converted from (swap sources only).
            from_currency: nil,
            # Name of the entity processing the payout (payout sources only; requires
            # payout:withdrawal:read).
            payer_name: nil,
            # Total charged by the payment source.
            payment_amount: nil,
            # Payment method used by the payment source.
            payment_method_type: nil,
            # Processor used by the payment source.
            payment_processor: nil,
            # Payout destination display info (payout sources only).
            payout_destination: nil,
            # Saved payout destination nickname (payout sources only).
            payout_token_nickname: nil,
            # Why the activity happened. On transfer sources this is the transfer reason, for
            # example pool_top_up or bounty_return. On payout sources it explains why the
            # payout was canceled, denied, or failed (requires payout:withdrawal:read); null
            # while the payout is progressing normally.
            reason: nil,
            # Whether this payout is currently held for manual risk review (payout sources
            # only; requires payout:withdrawal:read).
            risk_review_hold: nil,
            # Sender wallet address or onramp provider identifier (onchain_transaction sources
            # only).
            sender_address: nil,
            # Lifecycle status. On payout sources this is the payout status (requires
            # payout:withdrawal:read); on airdrop_link sources it is the claim-link status
            # (ungated); on payment and top-up sources it is the friendly payment status such
            # as succeeded/pending/failed (ungated).
            status: nil,
            # Amount received in to_currency as a decimal string (swap sources only).
            to_amount: nil,
            # Lowercase currency code converted to (swap sources only).
            to_currency: nil,
            # On-chain transaction hash (onchain_transaction and swap sources only).
            tx_hash: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                object: String,
                amount_float: T.nilable(Float),
                card_brand: T.nilable(String),
                chain: T.nilable(String),
                claim_url: T.nilable(String),
                created_at: T.nilable(Time),
                estimated_arrival: T.nilable(Time),
                from_amount: T.nilable(String),
                from_currency: T.nilable(String),
                payer_name: T.nilable(String),
                payment_amount:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Source::PaymentAmount
                  ),
                payment_method_type: T.nilable(String),
                payment_processor: T.nilable(String),
                payout_destination:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Source::PayoutDestination
                  ),
                payout_token_nickname: T.nilable(String),
                reason: T.nilable(String),
                risk_review_hold: T.nilable(T::Boolean),
                sender_address: T.nilable(String),
                status: T.nilable(String),
                to_amount: T.nilable(String),
                to_currency: T.nilable(String),
                tx_hash: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class PaymentAmount < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Source::PaymentAmount,
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

            # Total charged by the payment source.
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

          class PayoutDestination < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Source::PayoutDestination,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :icon_url

            sig { returns(T.nilable(String)) }
            attr_accessor :payer_name

            # Payout destination display info (payout sources only).
            sig do
              params(
                icon_url: T.nilable(String),
                payer_name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(icon_url: nil, payer_name: nil)
            end

            sig do
              override.returns(
                { icon_url: T.nilable(String), payer_name: T.nilable(String) }
              )
            end
            def to_hash
            end
          end
        end

        # The viewer account that owns this row's ledger. Present only when the response
        # aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
        module Account
          extend WhopSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0,
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1
              )
            end

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Account ID.
            sig { returns(String) }
            attr_accessor :id

            # Account logo URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :logo_url

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Account route.
            sig { returns(T.nilable(String)) }
            attr_accessor :route

            # Account display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :title

            sig do
              params(
                id: String,
                logo_url: T.nilable(String),
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0::Object::OrSymbol,
                route: T.nilable(String),
                title: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Account ID.
              id:,
              # Account logo URL.
              logo_url:,
              object:,
              # Account route.
              route:,
              # Account display name.
              title:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  logo_url: T.nilable(String),
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0::Object::TaggedSymbol,
                  route: T.nilable(String),
                  title: T.nilable(String)
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCOUNT =
                T.let(
                  :account,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember0::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember1 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1,
                  WhopSDK::Internal::AnyHash
                )
              end

            # User ID.
            sig { returns(String) }
            attr_accessor :id

            # User display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              returns(
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # User profile image URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :profile_picture_url

            # User's username.
            sig { returns(T.nilable(String)) }
            attr_accessor :username

            sig do
              params(
                id: String,
                name: T.nilable(String),
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1::Object::OrSymbol,
                profile_picture_url: T.nilable(String),
                username: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # User ID.
              id:,
              # User display name.
              name:,
              object:,
              # User profile image URL.
              profile_picture_url:,
              # User's username.
              username:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: T.nilable(String),
                  object:
                    WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1::Object::TaggedSymbol,
                  profile_picture_url: T.nilable(String),
                  username: T.nilable(String)
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
                    WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USER =
                T.let(
                  :user,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::SwapCompletedWebhookEvent::Data::Account::UnionMember1::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                WhopSDK::SwapCompletedWebhookEvent::Data::Account::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Payment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SwapCompletedWebhookEvent::Data::Payment,
                WhopSDK::Internal::AnyHash
              )
            end

          # Payment ID, prefixed `pay_`.
          sig { returns(String) }
          attr_accessor :id

          # Total charged by the payment.
          sig do
            returns(
              T.nilable(
                WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Amount
              )
            )
          end
          attr_reader :amount

          sig do
            params(
              amount:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Amount::OrHash
                )
            ).void
          end
          attr_writer :amount

          # Card brand, when the customer paid by card.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_brand

          # Last four digits of the card, when the customer paid by card.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_last4

          # When the payment was created.
          sig { returns(Time) }
          attr_accessor :created_at

          sig do
            returns(
              WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Object::TaggedSymbol
            )
          end
          attr_accessor :object

          # How the customer paid, such as `card` or `paypal`.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_type

          # Processor that handled the payment, such as `stripe`.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_processor

          # Plan associated with the payment, when applicable.
          sig do
            returns(
              T.nilable(WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Plan)
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Plan::OrHash
                )
            ).void
          end
          attr_writer :plan

          # Product associated with the payment, when applicable.
          sig do
            returns(
              T.nilable(
                WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Product
              )
            )
          end
          attr_reader :product

          sig do
            params(
              product:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Product::OrHash
                )
            ).void
          end
          attr_writer :product

          # Customer associated with the payment. Email requires member:email:read.
          sig do
            returns(
              T.nilable(WhopSDK::SwapCompletedWebhookEvent::Data::Payment::User)
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::User::OrHash
                )
            ).void
          end
          attr_writer :user

          # Payment related to this ledger activity. Included when rich resource hydration
          # is enabled and the movement is tied to a payment.
          sig do
            params(
              id: String,
              amount:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Amount::OrHash
                ),
              card_brand: T.nilable(String),
              card_last4: T.nilable(String),
              created_at: Time,
              object:
                WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Object::OrSymbol,
              payment_method_type: T.nilable(String),
              payment_processor: T.nilable(String),
              plan:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Plan::OrHash
                ),
              product:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Product::OrHash
                ),
              user:
                T.nilable(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::User::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Payment ID, prefixed `pay_`.
            id:,
            # Total charged by the payment.
            amount:,
            # Card brand, when the customer paid by card.
            card_brand:,
            # Last four digits of the card, when the customer paid by card.
            card_last4:,
            # When the payment was created.
            created_at:,
            object:,
            # How the customer paid, such as `card` or `paypal`.
            payment_method_type:,
            # Processor that handled the payment, such as `stripe`.
            payment_processor:,
            # Plan associated with the payment, when applicable.
            plan:,
            # Product associated with the payment, when applicable.
            product:,
            # Customer associated with the payment. Email requires member:email:read.
            user:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Amount
                  ),
                card_brand: T.nilable(String),
                card_last4: T.nilable(String),
                created_at: Time,
                object:
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Object::TaggedSymbol,
                payment_method_type: T.nilable(String),
                payment_processor: T.nilable(String),
                plan:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Plan
                  ),
                product:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Product
                  ),
                user:
                  T.nilable(
                    WhopSDK::SwapCompletedWebhookEvent::Data::Payment::User
                  )
              }
            )
          end
          def to_hash
          end

          class Amount < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Amount,
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

            # Total charged by the payment.
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

          module Object
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Object
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT =
              T.let(
                :payment,
                WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Object::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Object::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Plan < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Plan,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Plan ID, prefixed `plan_`.
            sig { returns(String) }
            attr_accessor :id

            # Plan name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Plan associated with the payment, when applicable.
            sig do
              params(id: String, name: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # Plan ID, prefixed `plan_`.
              id:,
              # Plan name.
              name:
            )
            end

            sig { override.returns({ id: String, name: T.nilable(String) }) }
            def to_hash
            end
          end

          class Product < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::Product,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Product ID, prefixed `prod_`.
            sig { returns(String) }
            attr_accessor :id

            # Product name.
            sig { returns(String) }
            attr_accessor :name

            # Product associated with the payment, when applicable.
            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(
              # Product ID, prefixed `prod_`.
              id:,
              # Product name.
              name:
            )
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end

          class User < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SwapCompletedWebhookEvent::Data::Payment::User,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Customer ID, prefixed `user_`.
            sig { returns(String) }
            attr_accessor :id

            # Customer email, or null without member:email:read.
            sig { returns(T.nilable(String)) }
            attr_accessor :email

            # Customer display name.
            sig { returns(String) }
            attr_accessor :name

            # Customer associated with the payment. Email requires member:email:read.
            sig do
              params(
                id: String,
                email: T.nilable(String),
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Customer ID, prefixed `user_`.
              id:,
              # Customer email, or null without member:email:read.
              email:,
              # Customer display name.
              name:
            )
            end

            sig do
              override.returns(
                { id: String, email: T.nilable(String), name: String }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
