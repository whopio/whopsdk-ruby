# frozen_string_literal: true

module WhopSDK
  module Models
    class DepositSucceededWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #
      #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data]
      required :data, -> { WhopSDK::DepositSucceededWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"deposit.succeeded"]
      required :type, const: :"deposit.succeeded"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"deposit.succeeded")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DepositSucceededWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::DepositSucceededWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"deposit.succeeded"] The webhook event type

      # @see WhopSDK::Models::DepositSucceededWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Ledger activity ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Signed amount in the currency's smallest precision units.
        #
        #   @return [String]
        required :amount, String

        # @!attribute available_at
        #   ISO 8601 timestamp these funds became (or are scheduled to become) withdrawable:
        #   the posted time for already-settled funds, or 00:00:00 UTC on the scheduled
        #   release date for pending funds. Present only on inflows entering the balance
        #   (payments, top-ups, incoming transfers/affiliate); null on payouts, refunds,
        #   disputes and on-chain rows. The available_after/before filters window on its UTC
        #   settlement date.
        #
        #   @return [Time, nil]
        required :available_at, Time, nil?: true

        # @!attribute currency
        #   Currency for this ledger activity.
        #
        #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Currency]
        required :currency, -> { WhopSDK::DepositSucceededWebhookEvent::Data::Currency }

        # @!attribute line_type
        #   The ledger line category this activity was posted under.
        #
        #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::LineType]
        required :line_type, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::LineType }

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Object]
        required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Object }

        # @!attribute posted_at
        #   When the activity posted to the ledger.
        #
        #   @return [Time]
        required :posted_at, Time

        # @!attribute resource
        #   Resource associated with this ledger activity.
        #
        #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember1, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember2, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember5, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember6, nil]
        required :resource, union: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource }, nil?: true

        # @!attribute source
        #   Source of this ledger activity.
        #
        #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source, nil]
        required :source, -> { WhopSDK::DepositSucceededWebhookEvent::Data::Source }, nil?: true

        # @!attribute account
        #   The viewer account that owns this row's ledger. Present only when the response
        #   aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
        #
        #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember1, nil]
        optional :account, union: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Account }

        # @!attribute ledger_account_id
        #   The ledger account (a ldgr\_ identifier) this row belongs to. Present only when
        #   the response aggregates owned accounts (include_owned_accounts=true); omitted
        #   otherwise. Pair it with `account` to scope drawers and dashboard links to the
        #   owning business.
        #
        #   @return [String, nil]
        optional :ledger_account_id, String, nil?: true

        # @!attribute payment
        #   Payment related to this ledger activity. Included when rich resource hydration
        #   is enabled and the movement is tied to a payment.
        #
        #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment, nil]
        optional :payment, -> { WhopSDK::DepositSucceededWebhookEvent::Data::Payment }, nil?: true

        # @!attribute payment_id
        #   Payment ID for any payment-related activity, including refunds and disputes.
        #
        #   @return [String, nil]
        optional :payment_id, String, nil?: true

        # @!attribute plan_id
        #   ID of the plan associated with the payment, when applicable.
        #
        #   @return [String, nil]
        optional :plan_id, String, nil?: true

        # @!attribute plan_name
        #   Name of the plan associated with the payment, when applicable.
        #
        #   @return [String, nil]
        optional :plan_name, String, nil?: true

        # @!attribute product_id
        #   ID of the product associated with the payment, when applicable.
        #
        #   @return [String, nil]
        optional :product_id, String, nil?: true

        # @!attribute product_name
        #   Name of the product associated with the payment, when applicable.
        #
        #   @return [String, nil]
        optional :product_name, String, nil?: true

        # @!attribute user_email
        #   Email of the customer associated with the payment. Requires member:email:read.
        #
        #   @return [String, nil]
        optional :user_email, String, nil?: true

        # @!attribute user_id
        #   ID of the customer associated with the payment.
        #
        #   @return [String, nil]
        optional :user_id, String, nil?: true

        # @!attribute user_name
        #   Display name of the customer associated with the payment.
        #
        #   @return [String, nil]
        optional :user_name, String, nil?: true

        # @!method initialize(id:, amount:, available_at:, currency:, line_type:, object:, posted_at:, resource:, source:, account: nil, ledger_account_id: nil, payment: nil, payment_id: nil, plan_id: nil, plan_name: nil, product_id: nil, product_name: nil, user_email: nil, user_id: nil, user_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::DepositSucceededWebhookEvent::Data} for more details.
        #
        #   @param id [String] Ledger activity ID.
        #
        #   @param amount [String] Signed amount in the currency's smallest precision units.
        #
        #   @param available_at [Time, nil] ISO 8601 timestamp these funds became (or are scheduled to become) withdrawable:
        #
        #   @param currency [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Currency] Currency for this ledger activity.
        #
        #   @param line_type [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::LineType] The ledger line category this activity was posted under.
        #
        #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Object]
        #
        #   @param posted_at [Time] When the activity posted to the ledger.
        #
        #   @param resource [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember1, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember2, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember5, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember6, nil] Resource associated with this ledger activity.
        #
        #   @param source [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source, nil] Source of this ledger activity.
        #
        #   @param account [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember1] The viewer account that owns this row's ledger. Present only when the response a
        #
        #   @param ledger_account_id [String, nil] The ledger account (a ldgr\_ identifier) this row belongs to. Present only when
        #   t
        #
        #   @param payment [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment, nil] Payment related to this ledger activity. Included when rich resource hydration i
        #
        #   @param payment_id [String, nil] Payment ID for any payment-related activity, including refunds and disputes.
        #
        #   @param plan_id [String, nil] ID of the plan associated with the payment, when applicable.
        #
        #   @param plan_name [String, nil] Name of the plan associated with the payment, when applicable.
        #
        #   @param product_id [String, nil] ID of the product associated with the payment, when applicable.
        #
        #   @param product_name [String, nil] Name of the product associated with the payment, when applicable.
        #
        #   @param user_email [String, nil] Email of the customer associated with the payment. Requires member:email:read.
        #
        #   @param user_id [String, nil] ID of the customer associated with the payment.
        #
        #   @param user_name [String, nil] Display name of the customer associated with the payment.

        # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data#currency
        class Currency < WhopSDK::Internal::Type::BaseModel
          # @!attribute code
          #   Currency code.
          #
          #   @return [String]
          required :code, String

          # @!attribute precision
          #   Precision factor for the currency, for example `100000000` for USD.
          #
          #   @return [String]
          required :precision, String

          # @!method initialize(code:, precision:)
          #   Currency for this ledger activity.
          #
          #   @param code [String] Currency code.
          #
          #   @param precision [String] Precision factor for the currency, for example `100000000` for USD.
        end

        # The ledger line category this activity was posted under.
        #
        # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data#line_type
        module LineType
          extend WhopSDK::Internal::Type::Enum

          AD_BUDGET_RELEASE = :ad_budget_release
          AD_CAMPAIGN_BUDGET = :ad_campaign_budget
          AD_PUBLISHER_PAYOUT = :ad_publisher_payout
          AD_PUBLISHER_PAYOUT_RECEIVED = :ad_publisher_payout_received
          AD_SPEND_CHARGE = :ad_spend_charge
          AFFILIATE_FEE = :affiliate_fee
          AIRDROP = :airdrop
          AIRDROP_LINK_CREATED = :airdrop_link_created
          AIRDROP_LINK_REDEEMED = :airdrop_link_redeemed
          AIRDROP_LINK_RETURNED = :airdrop_link_returned
          AIRDROP_REVERSAL = :airdrop_reversal
          APPLICATION_FEE = :application_fee
          APPLICATION_FEE_PAYOUT = :application_fee_payout
          BALANCE_RESERVATION = :balance_reservation
          BALANCE_RESERVATION_REVERSAL = :balance_reservation_reversal
          BANK_TRANSFER = :bank_transfer
          BILLING_PERCENTAGE_FEE = :billing_percentage_fee
          BUYER_FEE = :buyer_fee
          CARD_INTERCHANGE = :card_interchange
          CARD_LOAD_DEPOSIT = :card_load_deposit
          CARD_LOAD_TRANSFER = :card_load_transfer
          CARD_SPEND_AUTHORIZATION = :card_spend_authorization
          CARD_SPEND_AUTHORIZATION_VOID = :card_spend_authorization_void
          CARD_SPEND_REFUND = :card_spend_refund
          CARD_UNLOAD_DEPOSIT = :card_unload_deposit
          CARD_UNLOAD_TRANSFER = :card_unload_transfer
          COMPANY_REFERRAL = :company_referral
          CONNECTED_ACCOUNT_NEGATIVE_BALANCE = :connected_account_negative_balance
          CROSS_BORDER_PERCENTAGE_FEE = :cross_border_percentage_fee
          CURRENCY_CONVERSION_INCOMING = :currency_conversion_incoming
          CURRENCY_CONVERSION_OUTGOING = :currency_conversion_outgoing
          DISPUTE_ALERT_FEE = :dispute_alert_fee
          DISPUTE_HOLD_ADJUSTMENT = :dispute_hold_adjustment
          DISPUTE_REPRESENTMENT_FEE = :dispute_representment_fee
          EXTERNAL_CARD_LOAD_DEPOSIT = :external_card_load_deposit
          FRAUD_PREVENTION_FEE = :fraud_prevention_fee
          FX_PERCENTAGE_FEE = :fx_percentage_fee
          HIGH_RISK_MERCHANT_FEE = :high_risk_merchant_fee
          INSTALLMENT_DEFAULT = :installment_default
          INTERNAL_BALANCE_TRANSFER_INCOMING = :internal_balance_transfer_incoming
          INTERNAL_BALANCE_TRANSFER_OUTGOING = :internal_balance_transfer_outgoing
          INTERNAL_WITHDRAWAL = :internal_withdrawal
          INTERNAL_WITHDRAWAL_COMPLETE = :internal_withdrawal_complete
          INTERNAL_WITHDRAWAL_FEE = :internal_withdrawal_fee
          INTERNAL_WITHDRAWAL_FEE_REVERSAL = :internal_withdrawal_fee_reversal
          INTERNAL_WITHDRAWAL_IN_TRANSIT = :internal_withdrawal_in_transit
          INTERNAL_WITHDRAWAL_IN_TRANSIT_REVERSAL = :internal_withdrawal_in_transit_reversal
          INTERNAL_WITHDRAWAL_MARKUP_FEE = :internal_withdrawal_markup_fee
          INTERNAL_WITHDRAWAL_MARKUP_FEE_PAYOUT = :internal_withdrawal_markup_fee_payout
          INTERNAL_WITHDRAWAL_MARKUP_FEE_PAYOUT_REVERSAL = :internal_withdrawal_markup_fee_payout_reversal
          INTERNAL_WITHDRAWAL_MARKUP_FEE_REVERSAL = :internal_withdrawal_markup_fee_reversal
          INTERNAL_WITHDRAWAL_REVERSAL = :internal_withdrawal_reversal
          LEGACY_CRYPTO_PAYMENT = :legacy_crypto_payment
          LEGACY_PAYMENT = :legacy_payment
          LEGACY_PAYMENT_REFUND = :legacy_payment_refund
          LICENSE_SALE = :license_sale
          LICENSE_SALE_COMMISSION = :license_sale_commission
          LICENSE_SALE_REVENUE = :license_sale_revenue
          MARKETPLACE_AFFILIATE_FEE = :marketplace_affiliate_fee
          MISC_PURCHASE = :misc_purchase
          MISC_REFUND = :misc_refund
          MISC_REVERSAL = :misc_reversal
          ONCHAIN_DEPOSIT = :onchain_deposit
          ONCHAIN_SWAP_SOURCE = :onchain_swap_source
          ONCHAIN_SWAP_TARGET = :onchain_swap_target
          ONCHAIN_WALLET_TRANSFER_INCOMING = :onchain_wallet_transfer_incoming
          ONCHAIN_WALLET_TRANSFER_OUTGOING = :onchain_wallet_transfer_outgoing
          ONCHAIN_WITHDRAWAL = :onchain_withdrawal
          ORCHESTRATION_PERCENTAGE_FEE = :orchestration_percentage_fee
          PASSTHROUGH_GMV = :passthrough_gmv
          PAYMENT_DISPUTE = :payment_dispute
          PAYMENT_DISPUTE_ADJUSTMENT = :payment_dispute_adjustment
          PAYMENT_DISPUTE_FEE = :payment_dispute_fee
          PAYMENT_DISPUTE_REVERSAL = :payment_dispute_reversal
          PAYMENT_GROSS = :payment_gross
          PAYMENT_GROSS_REVERSAL = :payment_gross_reversal
          PAYMENT_PROCESSING_FIXED_FEE = :payment_processing_fixed_fee
          PAYMENT_PROCESSING_PERCENTAGE_FEE = :payment_processing_percentage_fee
          PAYMENT_REFERRAL = :payment_referral
          PAYMENT_REFERRAL_REFUND = :payment_referral_refund
          PAYMENT_REFERRAL_REVERSAL = :payment_referral_reversal
          PAYMENT_REFUND = :payment_refund
          PAYMENT_REFUND_REVERSAL = :payment_refund_reversal
          PAYMENT_REVSHARE = :payment_revshare
          PAYMENT_REVSHARE_PAYOUT = :payment_revshare_payout
          PAYMENT_REVSHARE_REFUND = :payment_revshare_refund
          PAYMENT_REVSHARE_REVERSAL = :payment_revshare_reversal
          PAYOUT_FEE = :payout_fee
          PLATFORM_AFFILIATE_PAYMENT = :platform_affiliate_payment
          PLATFORM_AFFILIATE_PAYMENT_REVERSAL = :platform_affiliate_payment_reversal
          PLATFORM_BALANCE_PAYMENT = :platform_balance_payment
          PLATFORM_BALANCE_PAYMENT_REFUND = :platform_balance_payment_refund
          PLATFORM_BALANCE_TRANSFER_FEE = :platform_balance_transfer_fee
          PLATFORM_BALANCE_TRANSFER_INCOMING = :platform_balance_transfer_incoming
          PLATFORM_BALANCE_TRANSFER_OUTGOING = :platform_balance_transfer_outgoing
          PLATFORM_COVERED_DISPUTE = :platform_covered_dispute
          PLATFORM_EARNING = :platform_earning
          PROMO_REVERSAL = :promo_reversal
          REFERRAL_BONUS = :referral_bonus
          RESOLUTION_CENTER_REFUND = :resolution_center_refund
          REVSHARE_PERCENTAGE_FEE = :revshare_percentage_fee
          SALES_TAX_FEE = :sales_tax_fee
          SALES_TAX_REMITTANCE = :sales_tax_remittance
          SALES_TAX_REMITTANCE_REVERSAL = :sales_tax_remittance_reversal
          SOFTWARE_RENTAL_REVSHARE = :software_rental_revshare
          SOFTWARE_RENTAL_TRANSACTION = :software_rental_transaction
          STRIPE_DOMESTIC_PROCESSING_FEE = :stripe_domestic_processing_fee
          STRIPE_INTERNATIONAL_PROCESSING_FEE = :stripe_international_processing_fee
          SWAP_FEE = :swap_fee
          THREE_DS_FIXED_FEE = :three_ds_fixed_fee
          TOPUP = :topup
          TOPUP_FEE = :topup_fee
          TOPUP_REVERSAL = :topup_reversal
          TREASURY_PAYIN = :treasury_payin
          WHOP_PROCESSING_FEE = :whop_processing_fee
          WITHDRAWAL = :withdrawal
          WITHDRAWAL_CLAWBACK = :withdrawal_clawback
          WITHDRAWAL_CLAWBACK_REVERSAL = :withdrawal_clawback_reversal
          WITHDRAWAL_FEE = :withdrawal_fee
          WITHDRAWAL_FEE_REVERSAL = :withdrawal_fee_reversal
          WITHDRAWAL_MARKUP_FEE = :withdrawal_markup_fee
          WITHDRAWAL_MARKUP_FEE_PAYOUT = :withdrawal_markup_fee_payout
          WITHDRAWAL_MARKUP_FEE_PAYOUT_REVERSAL = :withdrawal_markup_fee_payout_reversal
          WITHDRAWAL_MARKUP_FEE_REVERSAL = :withdrawal_markup_fee_reversal
          WITHDRAWAL_RECLASSIFICATION = :withdrawal_reclassification
          WITHDRAWAL_REVERSAL = :withdrawal_reversal
          WITHDRAWAL_TOPUP_ADJUSTMENT = :withdrawal_topup_adjustment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          LEDGER_ACTIVITY = :ledger_activity

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Resource associated with this ledger activity.
        #
        # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data#resource
        module Resource
          extend WhopSDK::Internal::Type::Union

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember0 }

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember1 }

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember2 }

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember3 }

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember4 }

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember5 }

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember6 }

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute logo_url
            #   Account logo URL.
            #
            #   @return [String, nil]
            required :logo_url, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember0::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember0::Object }

            # @!attribute route
            #   Account route.
            #
            #   @return [String, nil]
            required :route, String, nil?: true

            # @!attribute title
            #   Account display name.
            #
            #   @return [String, nil]
            required :title, String, nil?: true

            # @!method initialize(id:, logo_url:, object:, route:, title:)
            #   @param id [String] Account ID.
            #
            #   @param logo_url [String, nil] Account logo URL.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember0::Object]
            #
            #   @param route [String, nil] Account route.
            #
            #   @param title [String, nil] Account display name.

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember0#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              ACCOUNT = :account

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember1 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   User ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   User display name.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember1::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember1::Object }

            # @!attribute profile_picture_url
            #   User profile image URL.
            #
            #   @return [String, nil]
            required :profile_picture_url, String, nil?: true

            # @!attribute username
            #   User's username.
            #
            #   @return [String, nil]
            required :username, String, nil?: true

            # @!method initialize(id:, name:, object:, profile_picture_url:, username:)
            #   @param id [String] User ID.
            #
            #   @param name [String, nil] User display name.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember1::Object]
            #
            #   @param profile_picture_url [String, nil] User profile image URL.
            #
            #   @param username [String, nil] User's username.

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember1#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              USER = :user

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember2 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Bounty ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember2::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember2::Object }

            # @!attribute status
            #   Bounty lifecycle status.
            #
            #   @return [String]
            required :status, String

            # @!attribute title
            #   Bounty title.
            #
            #   @return [String]
            required :title, String

            # @!method initialize(id:, object:, status:, title:)
            #   @param id [String] Bounty ID.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember2::Object]
            #
            #   @param status [String] Bounty lifecycle status.
            #
            #   @param title [String] Bounty title.

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember2#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              BOUNTY = :bounty

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember3 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Ledger account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Object }

            # @!attribute owner
            #
            #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1, nil]
            required :owner,
                     union: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner },
                     nil?: true

            # @!method initialize(id:, object:, owner:)
            #   @param id [String] Ledger account ID.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Object]
            #
            #   @param owner [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1, nil]

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              LEDGER_ACCOUNT = :ledger_account

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3#owner
            module Owner
              extend WhopSDK::Internal::Type::Union

              variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0 }

              variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1 }

              class UnionMember0 < WhopSDK::Internal::Type::BaseModel
                # @!attribute id
                #   Account ID.
                #
                #   @return [String]
                required :id, String

                # @!attribute logo_url
                #   Account logo URL.
                #
                #   @return [String, nil]
                required :logo_url, String, nil?: true

                # @!attribute object
                #
                #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object]
                required :object,
                         enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object }

                # @!attribute route
                #   Account route.
                #
                #   @return [String, nil]
                required :route, String, nil?: true

                # @!attribute title
                #   Account display name.
                #
                #   @return [String, nil]
                required :title, String, nil?: true

                # @!method initialize(id:, logo_url:, object:, route:, title:)
                #   @param id [String] Account ID.
                #
                #   @param logo_url [String, nil] Account logo URL.
                #
                #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0::Object]
                #
                #   @param route [String, nil] Account route.
                #
                #   @param title [String, nil] Account display name.

                # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0#object
                module Object
                  extend WhopSDK::Internal::Type::Enum

                  ACCOUNT = :account

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember1 < WhopSDK::Internal::Type::BaseModel
                # @!attribute id
                #   User ID.
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #   User display name.
                #
                #   @return [String, nil]
                required :name, String, nil?: true

                # @!attribute object
                #
                #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object]
                required :object,
                         enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object }

                # @!attribute profile_picture_url
                #   User profile image URL.
                #
                #   @return [String, nil]
                required :profile_picture_url, String, nil?: true

                # @!attribute username
                #   User's username.
                #
                #   @return [String, nil]
                required :username, String, nil?: true

                # @!method initialize(id:, name:, object:, profile_picture_url:, username:)
                #   @param id [String] User ID.
                #
                #   @param name [String, nil] User display name.
                #
                #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1::Object]
                #
                #   @param profile_picture_url [String, nil] User profile image URL.
                #
                #   @param username [String, nil] User's username.

                # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1#object
                module Object
                  extend WhopSDK::Internal::Type::Enum

                  USER = :user

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3::Owner::UnionMember1)]
            end
          end

          class UnionMember4 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Payment method ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute bank
            #
            #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Bank, nil]
            required :bank,
                     -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Bank },
                     nil?: true

            # @!attribute card
            #
            #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Card, nil]
            required :card,
                     -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Card },
                     nil?: true

            # @!attribute email_identifier
            #   Email identifier for email-based payment methods.
            #
            #   @return [String, nil]
            required :email_identifier, String, nil?: true

            # @!attribute gateway_type
            #   Payment gateway type.
            #
            #   @return [String, nil]
            required :gateway_type, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Object }

            # @!attribute payment_method_type
            #   Payment method type.
            #
            #   @return [String, nil]
            required :payment_method_type, String, nil?: true

            # @!method initialize(id:, bank:, card:, email_identifier:, gateway_type:, object:, payment_method_type:)
            #   @param id [String] Payment method ID.
            #
            #   @param bank [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Bank, nil]
            #
            #   @param card [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Card, nil]
            #
            #   @param email_identifier [String, nil] Email identifier for email-based payment methods.
            #
            #   @param gateway_type [String, nil] Payment gateway type.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4::Object]
            #
            #   @param payment_method_type [String, nil] Payment method type.

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4#bank
            class Bank < WhopSDK::Internal::Type::BaseModel
              # @!attribute account_name
              #   Bank account holder name.
              #
              #   @return [String, nil]
              required :account_name, String, nil?: true

              # @!attribute account_type
              #   Bank account type.
              #
              #   @return [String, nil]
              required :account_type, String, nil?: true

              # @!attribute bank_name
              #   Bank name.
              #
              #   @return [String, nil]
              required :bank_name, String, nil?: true

              # @!attribute last4
              #   Last four digits of the bank account.
              #
              #   @return [String, nil]
              required :last4, String, nil?: true

              # @!method initialize(account_name:, account_type:, bank_name:, last4:)
              #   @param account_name [String, nil] Bank account holder name.
              #
              #   @param account_type [String, nil] Bank account type.
              #
              #   @param bank_name [String, nil] Bank name.
              #
              #   @param last4 [String, nil] Last four digits of the bank account.
            end

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4#card
            class Card < WhopSDK::Internal::Type::BaseModel
              # @!attribute brand
              #   Card brand.
              #
              #   @return [String, nil]
              required :brand, String, nil?: true

              # @!attribute exp_month
              #   Card expiration month.
              #
              #   @return [Integer, nil]
              required :exp_month, Integer, nil?: true

              # @!attribute exp_year
              #   Card expiration year.
              #
              #   @return [Integer, nil]
              required :exp_year, Integer, nil?: true

              # @!attribute last4
              #   Last four digits of the card.
              #
              #   @return [String, nil]
              required :last4, String, nil?: true

              # @!method initialize(brand:, exp_month:, exp_year:, last4:)
              #   @param brand [String, nil] Card brand.
              #
              #   @param exp_month [Integer, nil] Card expiration month.
              #
              #   @param exp_year [Integer, nil] Card expiration year.
              #
              #   @param last4 [String, nil] Last four digits of the card.
            end

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              PAYMENT_METHOD = :payment_method

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember5 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Payout method ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute account_reference
            #   Masked account reference.
            #
            #   @return [String, nil]
            required :account_reference, String, nil?: true

            # @!attribute destination_currency_code
            #   Destination currency code.
            #
            #   @return [String, nil]
            required :destination_currency_code, String, nil?: true

            # @!attribute institution_name
            #   Payout institution name.
            #
            #   @return [String, nil]
            required :institution_name, String, nil?: true

            # @!attribute nickname
            #   Payout method nickname.
            #
            #   @return [String, nil]
            required :nickname, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember5::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember5::Object }

            # @!attribute provider
            #   Payout provider.
            #
            #   @return [String, nil]
            required :provider, String, nil?: true

            # @!method initialize(id:, account_reference:, destination_currency_code:, institution_name:, nickname:, object:, provider:)
            #   @param id [String] Payout method ID.
            #
            #   @param account_reference [String, nil] Masked account reference.
            #
            #   @param destination_currency_code [String, nil] Destination currency code.
            #
            #   @param institution_name [String, nil] Payout institution name.
            #
            #   @param nickname [String, nil] Payout method nickname.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember5::Object]
            #
            #   @param provider [String, nil] Payout provider.

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember5#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              PAYOUT_METHOD = :payout_method

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember6 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Card transaction ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute authorized_at
            #   ISO 8601 timestamp the transaction was authorized.
            #
            #   @return [Time, nil]
            required :authorized_at, Time, nil?: true

            # @!attribute card_id
            #   Identifier of the card that the transaction was charged to.
            #
            #   @return [String, nil]
            required :card_id, String, nil?: true

            # @!attribute cashback_usd
            #   Cashback earned on this transaction as a USD decimal string. Zero for declined
            #   or ineligible transactions; null when cashback has not been computed yet.
            #
            #   @return [String, nil]
            required :cashback_usd, String, nil?: true

            # @!attribute declined_reason
            #   Reason the transaction was declined (when status is declined).
            #
            #   @return [String, nil]
            required :declined_reason, String, nil?: true

            # @!attribute local_amount
            #   Amount the merchant charged in their local currency, as a decimal string. Pair
            #   with local_currency.
            #
            #   @return [String, nil]
            required :local_amount, String, nil?: true

            # @!attribute local_currency
            #   ISO 4217 currency code of the merchant-charged amount in local_amount.
            #
            #   @return [String, nil]
            required :local_currency, String, nil?: true

            # @!attribute merchant_category
            #   Merchant category.
            #
            #   @return [String, nil]
            required :merchant_category, String, nil?: true

            # @!attribute merchant_icon_url
            #   Merchant icon URL.
            #
            #   @return [String, nil]
            required :merchant_icon_url, String, nil?: true

            # @!attribute merchant_name
            #   Merchant display name.
            #
            #   @return [String, nil]
            required :merchant_name, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember6::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Resource::UnionMember6::Object }

            # @!attribute posted_at
            #   ISO 8601 timestamp the transaction was settled by the card network.
            #
            #   @return [Time, nil]
            required :posted_at, Time, nil?: true

            # @!attribute status
            #   Current card transaction status.
            #
            #   @return [String, nil]
            required :status, String, nil?: true

            # @!attribute usd_amount
            #   The processor-settled USD amount as a decimal string. The ledger's USDT leg is
            #   posted 1:1 from this value.
            #
            #   @return [String, nil]
            required :usd_amount, String, nil?: true

            # @!method initialize(id:, authorized_at:, card_id:, cashback_usd:, declined_reason:, local_amount:, local_currency:, merchant_category:, merchant_icon_url:, merchant_name:, object:, posted_at:, status:, usd_amount:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember6}
            #   for more details.
            #
            #   @param id [String] Card transaction ID.
            #
            #   @param authorized_at [Time, nil] ISO 8601 timestamp the transaction was authorized.
            #
            #   @param card_id [String, nil] Identifier of the card that the transaction was charged to.
            #
            #   @param cashback_usd [String, nil] Cashback earned on this transaction as a USD decimal string. Zero for declined o
            #
            #   @param declined_reason [String, nil] Reason the transaction was declined (when status is declined).
            #
            #   @param local_amount [String, nil] Amount the merchant charged in their local currency, as a decimal string. Pair w
            #
            #   @param local_currency [String, nil] ISO 4217 currency code of the merchant-charged amount in local_amount.
            #
            #   @param merchant_category [String, nil] Merchant category.
            #
            #   @param merchant_icon_url [String, nil] Merchant icon URL.
            #
            #   @param merchant_name [String, nil] Merchant display name.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember6::Object]
            #
            #   @param posted_at [Time, nil] ISO 8601 timestamp the transaction was settled by the card network.
            #
            #   @param status [String, nil] Current card transaction status.
            #
            #   @param usd_amount [String, nil] The processor-settled USD amount as a decimal string. The ledger's USDT leg is p

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember6#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              CARD_TRANSACTION = :card_transaction

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember1, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember2, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember3, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember4, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember5, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Resource::UnionMember6)]
        end

        # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data#source
        class Source < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute object
          #
          #   @return [String]
          required :object, String

          # @!attribute amount_float
          #   Payout amount as a decimal number in the destination currency (payout sources
          #   only; requires payout:withdrawal:read).
          #
          #   @return [Float, nil]
          optional :amount_float, Float, nil?: true

          # @!attribute card_brand
          #   Card brand used by the payment source.
          #
          #   @return [String, nil]
          optional :card_brand, String, nil?: true

          # @!attribute chain
          #   Chain the deposit landed on, for example plasma (onchain_transaction sources
          #   only).
          #
          #   @return [String, nil]
          optional :chain, String, nil?: true

          # @!attribute claim_url
          #   Public claim URL for the airdrop link (airdrop_link sources only).
          #
          #   @return [String, nil]
          optional :claim_url, String, nil?: true

          # @!attribute created_at
          #   Payout creation time as an ISO 8601 timestamp (payout sources only; requires
          #   payout:withdrawal:read).
          #
          #   @return [Time, nil]
          optional :created_at, Time, nil?: true

          # @!attribute estimated_arrival
          #   Estimated arrival as an ISO 8601 timestamp (payout sources only; requires
          #   payout:withdrawal:read).
          #
          #   @return [Time, nil]
          optional :estimated_arrival, Time, nil?: true

          # @!attribute from_amount
          #   Amount converted out of from_currency as a decimal string (swap sources only).
          #
          #   @return [String, nil]
          optional :from_amount, String, nil?: true

          # @!attribute from_currency
          #   Lowercase currency code converted from (swap sources only).
          #
          #   @return [String, nil]
          optional :from_currency, String, nil?: true

          # @!attribute payer_name
          #   Name of the entity processing the payout (payout sources only; requires
          #   payout:withdrawal:read).
          #
          #   @return [String, nil]
          optional :payer_name, String, nil?: true

          # @!attribute payment_amount
          #   Total charged by the payment source.
          #
          #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source::PaymentAmount, nil]
          optional :payment_amount,
                   -> { WhopSDK::DepositSucceededWebhookEvent::Data::Source::PaymentAmount },
                   nil?: true

          # @!attribute payment_method_type
          #   Payment method used by the payment source.
          #
          #   @return [String, nil]
          optional :payment_method_type, String, nil?: true

          # @!attribute payment_processor
          #   Processor used by the payment source.
          #
          #   @return [String, nil]
          optional :payment_processor, String, nil?: true

          # @!attribute payout_destination
          #   Payout destination display info (payout sources only).
          #
          #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source::PayoutDestination, nil]
          optional :payout_destination,
                   -> { WhopSDK::DepositSucceededWebhookEvent::Data::Source::PayoutDestination },
                   nil?: true

          # @!attribute payout_token_nickname
          #   Saved payout destination nickname (payout sources only).
          #
          #   @return [String, nil]
          optional :payout_token_nickname, String, nil?: true

          # @!attribute reason
          #   Why the activity happened. On transfer sources this is the transfer reason, for
          #   example pool_top_up or bounty_return. On payout sources it explains why the
          #   payout was canceled, denied, or failed (requires payout:withdrawal:read); null
          #   while the payout is progressing normally.
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!attribute risk_review_hold
          #   Whether this payout is currently held for manual risk review (payout sources
          #   only; requires payout:withdrawal:read).
          #
          #   @return [Boolean, nil]
          optional :risk_review_hold, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute sender_address
          #   Sender wallet address or onramp provider identifier (onchain_transaction sources
          #   only).
          #
          #   @return [String, nil]
          optional :sender_address, String, nil?: true

          # @!attribute status
          #   Lifecycle status. On payout sources this is the payout status (requires
          #   payout:withdrawal:read); on airdrop_link sources it is the claim-link status
          #   (ungated); on payment and top-up sources it is the friendly payment status such
          #   as succeeded/pending/failed (ungated).
          #
          #   @return [String, nil]
          optional :status, String, nil?: true

          # @!attribute to_amount
          #   Amount received in to_currency as a decimal string (swap sources only).
          #
          #   @return [String, nil]
          optional :to_amount, String, nil?: true

          # @!attribute to_currency
          #   Lowercase currency code converted to (swap sources only).
          #
          #   @return [String, nil]
          optional :to_currency, String, nil?: true

          # @!attribute tx_hash
          #   On-chain transaction hash (onchain_transaction and swap sources only).
          #
          #   @return [String, nil]
          optional :tx_hash, String, nil?: true

          # @!method initialize(id:, object:, amount_float: nil, card_brand: nil, chain: nil, claim_url: nil, created_at: nil, estimated_arrival: nil, from_amount: nil, from_currency: nil, payer_name: nil, payment_amount: nil, payment_method_type: nil, payment_processor: nil, payout_destination: nil, payout_token_nickname: nil, reason: nil, risk_review_hold: nil, sender_address: nil, status: nil, to_amount: nil, to_currency: nil, tx_hash: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source} for more details.
          #
          #   Source of this ledger activity.
          #
          #   @param id [String]
          #
          #   @param object [String]
          #
          #   @param amount_float [Float, nil] Payout amount as a decimal number in the destination currency (payout sources on
          #
          #   @param card_brand [String, nil] Card brand used by the payment source.
          #
          #   @param chain [String, nil] Chain the deposit landed on, for example plasma (onchain_transaction sources onl
          #
          #   @param claim_url [String, nil] Public claim URL for the airdrop link (airdrop_link sources only).
          #
          #   @param created_at [Time, nil] Payout creation time as an ISO 8601 timestamp (payout sources only; requires pay
          #
          #   @param estimated_arrival [Time, nil] Estimated arrival as an ISO 8601 timestamp (payout sources only; requires payout
          #
          #   @param from_amount [String, nil] Amount converted out of from_currency as a decimal string (swap sources only).
          #
          #   @param from_currency [String, nil] Lowercase currency code converted from (swap sources only).
          #
          #   @param payer_name [String, nil] Name of the entity processing the payout (payout sources only; requires payout:w
          #
          #   @param payment_amount [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source::PaymentAmount, nil] Total charged by the payment source.
          #
          #   @param payment_method_type [String, nil] Payment method used by the payment source.
          #
          #   @param payment_processor [String, nil] Processor used by the payment source.
          #
          #   @param payout_destination [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source::PayoutDestination, nil] Payout destination display info (payout sources only).
          #
          #   @param payout_token_nickname [String, nil] Saved payout destination nickname (payout sources only).
          #
          #   @param reason [String, nil] Why the activity happened. On transfer sources this is the transfer reason, for
          #
          #   @param risk_review_hold [Boolean, nil] Whether this payout is currently held for manual risk review (payout sources onl
          #
          #   @param sender_address [String, nil] Sender wallet address or onramp provider identifier (onchain_transaction sources
          #
          #   @param status [String, nil] Lifecycle status. On payout sources this is the payout status (requires payout:w
          #
          #   @param to_amount [String, nil] Amount received in to_currency as a decimal string (swap sources only).
          #
          #   @param to_currency [String, nil] Lowercase currency code converted to (swap sources only).
          #
          #   @param tx_hash [String, nil] On-chain transaction hash (onchain_transaction and swap sources only).

          # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source#payment_amount
          class PaymentAmount < WhopSDK::Internal::Type::BaseModel
            # @!attribute amount
            #   The amount in major units, as an exact decimal string — `"10.00"` is ten
            #   dollars. A string so no float rounds it in transit.
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   Three-letter ISO 4217 currency code, lowercase.
            #
            #   @return [String]
            required :currency, String

            # @!attribute decimals
            #   How many decimal places the amount CARRIES — the precision the charge itself
            #   runs at.
            #
            #   @return [Integer]
            required :decimals, Integer

            # @!attribute display_decimals
            #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
            #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
            #   and `0`. Format the number in your own locale using this.
            #
            #   @return [Integer]
            required :display_decimals, Integer

            # @!method initialize(amount:, currency:, decimals:, display_decimals:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source::PaymentAmount} for
            #   more details.
            #
            #   Total charged by the payment source.
            #
            #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
            #
            #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
            #
            #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
            #
            #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
          end

          # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Source#payout_destination
          class PayoutDestination < WhopSDK::Internal::Type::BaseModel
            # @!attribute icon_url
            #
            #   @return [String, nil]
            optional :icon_url, String, nil?: true

            # @!attribute payer_name
            #
            #   @return [String, nil]
            optional :payer_name, String, nil?: true

            # @!method initialize(icon_url: nil, payer_name: nil)
            #   Payout destination display info (payout sources only).
            #
            #   @param icon_url [String, nil]
            #   @param payer_name [String, nil]
          end
        end

        # The viewer account that owns this row's ledger. Present only when the response
        # aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
        #
        # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data#account
        module Account
          extend WhopSDK::Internal::Type::Union

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Account::UnionMember0 }

          variant -> { WhopSDK::DepositSucceededWebhookEvent::Data::Account::UnionMember1 }

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute logo_url
            #   Account logo URL.
            #
            #   @return [String, nil]
            required :logo_url, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember0::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Account::UnionMember0::Object }

            # @!attribute route
            #   Account route.
            #
            #   @return [String, nil]
            required :route, String, nil?: true

            # @!attribute title
            #   Account display name.
            #
            #   @return [String, nil]
            required :title, String, nil?: true

            # @!method initialize(id:, logo_url:, object:, route:, title:)
            #   @param id [String] Account ID.
            #
            #   @param logo_url [String, nil] Account logo URL.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember0::Object]
            #
            #   @param route [String, nil] Account route.
            #
            #   @param title [String, nil] Account display name.

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember0#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              ACCOUNT = :account

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember1 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   User ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   User display name.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember1::Object]
            required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Account::UnionMember1::Object }

            # @!attribute profile_picture_url
            #   User profile image URL.
            #
            #   @return [String, nil]
            required :profile_picture_url, String, nil?: true

            # @!attribute username
            #   User's username.
            #
            #   @return [String, nil]
            required :username, String, nil?: true

            # @!method initialize(id:, name:, object:, profile_picture_url:, username:)
            #   @param id [String] User ID.
            #
            #   @param name [String, nil] User display name.
            #
            #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember1::Object]
            #
            #   @param profile_picture_url [String, nil] User profile image URL.
            #
            #   @param username [String, nil] User's username.

            # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember1#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              USER = :user

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember0, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Account::UnionMember1)]
        end

        # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data#payment
        class Payment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Payment ID, prefixed `pay_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   Total charged by the payment.
          #
          #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Amount, nil]
          required :amount, -> { WhopSDK::DepositSucceededWebhookEvent::Data::Payment::Amount }, nil?: true

          # @!attribute card_brand
          #   Card brand, when the customer paid by card.
          #
          #   @return [String, nil]
          required :card_brand, String, nil?: true

          # @!attribute card_last4
          #   Last four digits of the card, when the customer paid by card.
          #
          #   @return [String, nil]
          required :card_last4, String, nil?: true

          # @!attribute created_at
          #   When the payment was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute object
          #
          #   @return [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Object]
          required :object, enum: -> { WhopSDK::DepositSucceededWebhookEvent::Data::Payment::Object }

          # @!attribute payment_method_type
          #   How the customer paid, such as `card` or `paypal`.
          #
          #   @return [String, nil]
          required :payment_method_type, String, nil?: true

          # @!attribute payment_processor
          #   Processor that handled the payment, such as `stripe`.
          #
          #   @return [String, nil]
          required :payment_processor, String, nil?: true

          # @!attribute plan
          #   Plan associated with the payment, when applicable.
          #
          #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Plan, nil]
          required :plan, -> { WhopSDK::DepositSucceededWebhookEvent::Data::Payment::Plan }, nil?: true

          # @!attribute product
          #   Product associated with the payment, when applicable.
          #
          #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Product, nil]
          required :product, -> { WhopSDK::DepositSucceededWebhookEvent::Data::Payment::Product }, nil?: true

          # @!attribute user
          #   Customer associated with the payment. Email requires member:email:read.
          #
          #   @return [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::User, nil]
          required :user, -> { WhopSDK::DepositSucceededWebhookEvent::Data::Payment::User }, nil?: true

          # @!method initialize(id:, amount:, card_brand:, card_last4:, created_at:, object:, payment_method_type:, payment_processor:, plan:, product:, user:)
          #   Payment related to this ledger activity. Included when rich resource hydration
          #   is enabled and the movement is tied to a payment.
          #
          #   @param id [String] Payment ID, prefixed `pay_`.
          #
          #   @param amount [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Amount, nil] Total charged by the payment.
          #
          #   @param card_brand [String, nil] Card brand, when the customer paid by card.
          #
          #   @param card_last4 [String, nil] Last four digits of the card, when the customer paid by card.
          #
          #   @param created_at [Time] When the payment was created.
          #
          #   @param object [Symbol, WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Object]
          #
          #   @param payment_method_type [String, nil] How the customer paid, such as `card` or `paypal`.
          #
          #   @param payment_processor [String, nil] Processor that handled the payment, such as `stripe`.
          #
          #   @param plan [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Plan, nil] Plan associated with the payment, when applicable.
          #
          #   @param product [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Product, nil] Product associated with the payment, when applicable.
          #
          #   @param user [WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::User, nil] Customer associated with the payment. Email requires member:email:read.

          # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment#amount
          class Amount < WhopSDK::Internal::Type::BaseModel
            # @!attribute amount
            #   The amount in major units, as an exact decimal string — `"10.00"` is ten
            #   dollars. A string so no float rounds it in transit.
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   Three-letter ISO 4217 currency code, lowercase.
            #
            #   @return [String]
            required :currency, String

            # @!attribute decimals
            #   How many decimal places the amount CARRIES — the precision the charge itself
            #   runs at.
            #
            #   @return [Integer]
            required :decimals, Integer

            # @!attribute display_decimals
            #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
            #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
            #   and `0`. Format the number in your own locale using this.
            #
            #   @return [Integer]
            required :display_decimals, Integer

            # @!method initialize(amount:, currency:, decimals:, display_decimals:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment::Amount} for more
            #   details.
            #
            #   Total charged by the payment.
            #
            #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
            #
            #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
            #
            #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
            #
            #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
          end

          # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment#object
          module Object
            extend WhopSDK::Internal::Type::Enum

            PAYMENT = :payment

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment#plan
          class Plan < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Plan ID, prefixed `plan_`.
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   Plan name.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!method initialize(id:, name:)
            #   Plan associated with the payment, when applicable.
            #
            #   @param id [String] Plan ID, prefixed `plan_`.
            #
            #   @param name [String, nil] Plan name.
          end

          # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment#product
          class Product < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Product ID, prefixed `prod_`.
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   Product name.
            #
            #   @return [String]
            required :name, String

            # @!method initialize(id:, name:)
            #   Product associated with the payment, when applicable.
            #
            #   @param id [String] Product ID, prefixed `prod_`.
            #
            #   @param name [String] Product name.
          end

          # @see WhopSDK::Models::DepositSucceededWebhookEvent::Data::Payment#user
          class User < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Customer ID, prefixed `user_`.
            #
            #   @return [String]
            required :id, String

            # @!attribute email
            #   Customer email, or null without member:email:read.
            #
            #   @return [String, nil]
            required :email, String, nil?: true

            # @!attribute name
            #   Customer display name.
            #
            #   @return [String]
            required :name, String

            # @!method initialize(id:, email:, name:)
            #   Customer associated with the payment. Email requires member:email:read.
            #
            #   @param id [String] Customer ID, prefixed `user_`.
            #
            #   @param email [String, nil] Customer email, or null without member:email:read.
            #
            #   @param name [String] Customer display name.
          end
        end
      end
    end
  end
end
