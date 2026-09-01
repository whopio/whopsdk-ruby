# frozen_string_literal: true

module WhopSDK
  module Models
    class PayoutMethodCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"payout_method.created"]
      required :type, const: :"payout_method.created"

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

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"payout_method.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PayoutMethodCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"payout_method.created"] The webhook event type

      # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Payout method ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute account_reference
        #   Masked identifier for the destination, such as the last four digits of a bank
        #   account.
        #
        #   @return [String, nil]
        required :account_reference, String, nil?: true

        # @!attribute bank_verification_state
        #   Lifecycle trust state: `checking` (verification still running), `verified` (bank
        #   confirmed ownership or a payout already completed to it), `no_data`
        #   (verification unavailable or bank returned no ownership data), `warning` (bank
        #   could not confirm the destination's owner), `broken` (payouts failed with a
        #   permanent account error), `null` (never checked).
        #
        #   @return [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState, nil]
        required :bank_verification_state,
                 enum: -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState },
                 nil?: true

        # @!attribute created_at
        #   When the payout method was added.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute destination_currency
        #   Currency payouts are delivered in for this method.
        #
        #   @return [String]
        required :destination_currency, String

        # @!attribute estimated_arrival
        #   Estimated arrival times before an amount-specific quote is requested. Null when
        #   the method is not currently eligible.
        #
        #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::EstimatedArrival, nil]
        required :estimated_arrival,
                 -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::EstimatedArrival },
                 nil?: true

        # @!attribute fee_structure
        #   Configured fee terms for this payout method. Null when the method is not
        #   currently eligible. An amount-specific quote remains authoritative.
        #
        #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::FeeStructure, nil]
        required :fee_structure,
                 -> {
                   WhopSDK::PayoutMethodCreatedWebhookEvent::Data::FeeStructure
                 },
                 nil?: true

        # @!attribute institution_name
        #   Name of the bank or institution receiving payouts.
        #
        #   @return [String, nil]
        required :institution_name, String, nil?: true

        # @!attribute is_clone
        #   Whether this method is a copy of one saved on another of the payer's accounts.
        #
        #   @return [Boolean]
        required :is_clone, WhopSDK::Internal::Type::Boolean

        # @!attribute is_default
        #   Whether this is the default payout method for the account.
        #
        #   @return [Boolean]
        required :is_default, WhopSDK::Internal::Type::Boolean

        # @!attribute last_paid_out_at
        #   When the most recent completed payout was delivered to this method, as an ISO
        #   8601 timestamp. `null` when nothing has been paid out to it yet.
        #
        #   @return [Time, nil]
        required :last_paid_out_at, Time, nil?: true

        # @!attribute linked_via_plaid
        #   Whether the payer added this method by signing in to their bank rather than
        #   typing account details.
        #
        #   @return [Boolean]
        required :linked_via_plaid, WhopSDK::Internal::Type::Boolean

        # @!attribute needs_plaid_reconnect
        #   Whether the bank sign-in behind this method has expired and must be redone
        #   before it counts as linked.
        #
        #   @return [Boolean]
        required :needs_plaid_reconnect, WhopSDK::Internal::Type::Boolean

        # @!attribute nickname
        #   User-defined label for the payout method.
        #
        #   @return [String, nil]
        required :nickname, String, nil?: true

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Object]
        required :object, enum: -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Object }

        # @!attribute payer_name
        #   Display name of the payout rail, such as `ACH Bank Deposit`.
        #
        #   @return [String, nil]
        required :payer_name, String, nil?: true

        # @!attribute quote
        #   Fee and delivery estimate for paying out the requested amount through this
        #   method. Null unless an amount was provided, or when the estimate is unavailable.
        #
        #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote, nil]
        required :quote, -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote }, nil?: true

        # @!attribute status
        #   Lifecycle status: `created` means saved but unused, `active` means a payout
        #   succeeded through it, `broken` means a payout failure disabled it; a later
        #   successful payout returns it to `active`.
        #
        #   @return [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Status }

        # @!attribute status_reason
        #   Machine-readable code for why the method is `broken` — the newest disabling
        #   failure recorded through it, whether a payout error or a pre-payout rejection.
        #   `null` unless the method is broken, or when it was disabled without a recorded
        #   failure.
        #
        #   @return [String, nil]
        required :status_reason, String, nil?: true

        # @!attribute supported_payout_method
        #   The supported payout method this saved method was created from.
        #
        #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod, nil]
        required :supported_payout_method,
                 -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod },
                 nil?: true

        # @!attribute unavailable_reason
        #   Why this method is unavailable: `destination_retired` means the payout provider
        #   stopped offering the destination. Whop may automatically remap an eligible
        #   method that was not linked through Plaid to a compatible replacement; otherwise,
        #   the account owner must re-add it. `null` means no unavailability reason is
        #   known.
        #
        #   @return [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason, nil]
        required :unavailable_reason,
                 enum: -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason },
                 nil?: true

        # @!method initialize(id:, account_reference:, bank_verification_state:, created_at:, destination_currency:, estimated_arrival:, fee_structure:, institution_name:, is_clone:, is_default:, last_paid_out_at:, linked_via_plaid:, needs_plaid_reconnect:, nickname:, object:, payer_name:, quote:, status:, status_reason:, supported_payout_method:, unavailable_reason:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Payout method ID.
        #
        #   @param account_reference [String, nil] Masked identifier for the destination, such as the last four digits of a bank ac
        #
        #   @param bank_verification_state [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::BankVerificationState, nil] Lifecycle trust state: `checking` (verification still running), `verified` (bank
        #
        #   @param created_at [Time] When the payout method was added.
        #
        #   @param destination_currency [String] Currency payouts are delivered in for this method.
        #
        #   @param estimated_arrival [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::EstimatedArrival, nil] Estimated arrival times before an amount-specific quote is requested. Null when
        #
        #   @param fee_structure [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::FeeStructure, nil] Configured fee terms for this payout method. Null when the method is not current
        #
        #   @param institution_name [String, nil] Name of the bank or institution receiving payouts.
        #
        #   @param is_clone [Boolean] Whether this method is a copy of one saved on another of the payer's accounts.
        #
        #   @param is_default [Boolean] Whether this is the default payout method for the account.
        #
        #   @param last_paid_out_at [Time, nil] When the most recent completed payout was delivered to this method, as an ISO 86
        #
        #   @param linked_via_plaid [Boolean] Whether the payer added this method by signing in to their bank rather than typi
        #
        #   @param needs_plaid_reconnect [Boolean] Whether the bank sign-in behind this method has expired and must be redone befor
        #
        #   @param nickname [String, nil] User-defined label for the payout method.
        #
        #   @param object [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Object]
        #
        #   @param payer_name [String, nil] Display name of the payout rail, such as `ACH Bank Deposit`.
        #
        #   @param quote [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote, nil] Fee and delivery estimate for paying out the requested amount through this metho
        #
        #   @param status [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Status] Lifecycle status: `created` means saved but unused, `active` means a payout succ
        #
        #   @param status_reason [String, nil] Machine-readable code for why the method is `broken` — the newest disabling fail
        #
        #   @param supported_payout_method [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod, nil] The supported payout method this saved method was created from.
        #
        #   @param unavailable_reason [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::UnavailableReason, nil] Why this method is unavailable: `destination_retired` means the payout provider

        # Lifecycle trust state: `checking` (verification still running), `verified` (bank
        # confirmed ownership or a payout already completed to it), `no_data`
        # (verification unavailable or bank returned no ownership data), `warning` (bank
        # could not confirm the destination's owner), `broken` (payouts failed with a
        # permanent account error), `null` (never checked).
        #
        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#bank_verification_state
        module BankVerificationState
          extend WhopSDK::Internal::Type::Enum

          CHECKING = :checking
          VERIFIED = :verified
          NO_DATA = :no_data
          WARNING = :warning
          BROKEN = :broken

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#estimated_arrival
        class EstimatedArrival < WhopSDK::Internal::Type::BaseModel
          # @!attribute instant
          #   Estimated instant-delivery arrival, or null when unavailable.
          #
          #   @return [Time, nil]
          required :instant, Time, nil?: true

          # @!attribute standard
          #   Estimated standard-delivery arrival, or null when unavailable.
          #
          #   @return [Time, nil]
          required :standard, Time, nil?: true

          # @!method initialize(instant:, standard:)
          #   Estimated arrival times before an amount-specific quote is requested. Null when
          #   the method is not currently eligible.
          #
          #   @param instant [Time, nil] Estimated instant-delivery arrival, or null when unavailable.
          #
          #   @param standard [Time, nil] Estimated standard-delivery arrival, or null when unavailable.
        end

        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#fee_structure
        class FeeStructure < WhopSDK::Internal::Type::BaseModel
          # @!attribute currency
          #   Currency code of fixed_amount.
          #
          #   @return [String]
          required :currency, String

          # @!attribute fixed_amount
          #   Fixed fee charged, denominated in `currency`.
          #
          #   @return [Float]
          required :fixed_amount, Float

          # @!attribute percentage
          #   Percentage of the payout amount charged as a fee.
          #
          #   @return [Float]
          required :percentage, Float

          # @!method initialize(currency:, fixed_amount:, percentage:)
          #   Configured fee terms for this payout method. Null when the method is not
          #   currently eligible. An amount-specific quote remains authoritative.
          #
          #   @param currency [String] Currency code of fixed_amount.
          #
          #   @param fixed_amount [Float] Fixed fee charged, denominated in `currency`.
          #
          #   @param percentage [Float] Percentage of the payout amount charged as a fee.
        end

        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          PAYOUT_METHOD = :payout_method

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#quote
        class Quote < WhopSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   The payout amount the quote is for.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute currency
          #   Currency of the quoted amount.
          #
          #   @return [String]
          required :currency, String

          # @!attribute exchange_rate
          #   Exchange rate from the payout currency to the destination currency.
          #
          #   @return [Float]
          required :exchange_rate, Float

          # @!attribute instant
          #   Instant-delivery estimate. Null if the method does not support instant delivery,
          #   instant delivery is unavailable for the account, or the amount does not cover
          #   the fee.
          #
          #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote::Instant, nil]
          required :instant, -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Instant }, nil?: true

          # @!attribute instant_unavailable_reason
          #   Why instant delivery is unavailable for this method.
          #   `minimum_crypto_sales_not_met` means the account has not reached the total sales
          #   required for instant cryptocurrency payouts. `null` when this restriction does
          #   not apply.
          #
          #   @return [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason, nil]
          required :instant_unavailable_reason,
                   enum: -> {
                     WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason
                   },
                   nil?: true

          # @!attribute max_limit
          #   Maximum payout amount for this method, in the payout currency.
          #
          #   @return [Float, nil]
          required :max_limit, Float, nil?: true

          # @!attribute min_limit
          #   Minimum payout amount for this method, in the payout currency.
          #
          #   @return [Float]
          required :min_limit, Float

          # @!attribute standard
          #   Standard-delivery estimate. Null if the method does not support standard
          #   delivery, or the amount does not cover the fee.
          #
          #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote::Standard, nil]
          required :standard,
                   -> {
                     WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Quote::Standard
                   },
                   nil?: true

          # @!method initialize(amount:, currency:, exchange_rate:, instant:, instant_unavailable_reason:, max_limit:, min_limit:, standard:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote} for more
          #   details.
          #
          #   Fee and delivery estimate for paying out the requested amount through this
          #   method. Null unless an amount was provided, or when the estimate is unavailable.
          #
          #   @param amount [Float] The payout amount the quote is for.
          #
          #   @param currency [String] Currency of the quoted amount.
          #
          #   @param exchange_rate [Float] Exchange rate from the payout currency to the destination currency.
          #
          #   @param instant [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote::Instant, nil] Instant-delivery estimate. Null if the method does not support instant delivery,
          #
          #   @param instant_unavailable_reason [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote::InstantUnavailableReason, nil] Why instant delivery is unavailable for this method. `minimum_crypto_sales_not_m
          #
          #   @param max_limit [Float, nil] Maximum payout amount for this method, in the payout currency.
          #
          #   @param min_limit [Float] Minimum payout amount for this method, in the payout currency.
          #
          #   @param standard [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote::Standard, nil] Standard-delivery estimate. Null if the method does not support standard deliver

          # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote#instant
          class Instant < WhopSDK::Internal::Type::BaseModel
            # @!attribute fee
            #   Total fee charged, in the payout currency.
            #
            #   @return [Float]
            required :fee, Float

            # @!attribute total_received
            #   Amount remaining after fees, in the payout currency.
            #
            #   @return [Float]
            required :total_received, Float

            # @!method initialize(fee:, total_received:)
            #   Instant-delivery estimate. Null if the method does not support instant delivery,
            #   instant delivery is unavailable for the account, or the amount does not cover
            #   the fee.
            #
            #   @param fee [Float] Total fee charged, in the payout currency.
            #
            #   @param total_received [Float] Amount remaining after fees, in the payout currency.
          end

          # Why instant delivery is unavailable for this method.
          # `minimum_crypto_sales_not_met` means the account has not reached the total sales
          # required for instant cryptocurrency payouts. `null` when this restriction does
          # not apply.
          #
          # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote#instant_unavailable_reason
          module InstantUnavailableReason
            extend WhopSDK::Internal::Type::Enum

            MINIMUM_CRYPTO_SALES_NOT_MET = :minimum_crypto_sales_not_met

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Quote#standard
          class Standard < WhopSDK::Internal::Type::BaseModel
            # @!attribute fee
            #   Total fee charged, in the payout currency.
            #
            #   @return [Float]
            required :fee, Float

            # @!attribute total_received
            #   Amount remaining after fees, in the payout currency.
            #
            #   @return [Float]
            required :total_received, Float

            # @!method initialize(fee:, total_received:)
            #   Standard-delivery estimate. Null if the method does not support standard
            #   delivery, or the amount does not cover the fee.
            #
            #   @param fee [Float] Total fee charged, in the payout currency.
            #
            #   @param total_received [Float] Amount remaining after fees, in the payout currency.
          end
        end

        # Lifecycle status: `created` means saved but unused, `active` means a payout
        # succeeded through it, `broken` means a payout failure disabled it; a later
        # successful payout returns it to `active`.
        #
        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          CREATED = :created
          ACTIVE = :active
          BROKEN = :broken

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#supported_payout_method
        class SupportedPayoutMethod < WhopSDK::Internal::Type::BaseModel
          # @!attribute country_code
          #   ISO 3166-1 alpha-3 country the destination pays out to.
          #
          #   @return [String, nil]
          required :country_code, String, nil?: true

          # @!attribute delivery_type
          #   How funds are delivered.
          #
          #   @return [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType]
          required :delivery_type,
                   enum: -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType }

          # @!attribute icon_url
          #   Supported payout method icon URL.
          #
          #   @return [String, nil]
          required :icon_url, String, nil?: true

          # @!attribute name
          #   Supported payout method display name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute supports_instant_delivery
          #
          #   @return [Boolean]
          required :supports_instant_delivery, WhopSDK::Internal::Type::Boolean

          # @!attribute supports_plaid
          #   Whether the payer can link this method by signing in to their bank instead of
          #   typing account details.
          #
          #   @return [Boolean]
          required :supports_plaid, WhopSDK::Internal::Type::Boolean

          # @!attribute supports_standard_delivery
          #
          #   @return [Boolean]
          required :supports_standard_delivery, WhopSDK::Internal::Type::Boolean

          # @!method initialize(country_code:, delivery_type:, icon_url:, name:, supports_instant_delivery:, supports_plaid:, supports_standard_delivery:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod}
          #   for more details.
          #
          #   The supported payout method this saved method was created from.
          #
          #   @param country_code [String, nil] ISO 3166-1 alpha-3 country the destination pays out to.
          #
          #   @param delivery_type [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod::DeliveryType] How funds are delivered.
          #
          #   @param icon_url [String, nil] Supported payout method icon URL.
          #
          #   @param name [String, nil] Supported payout method display name.
          #
          #   @param supports_instant_delivery [Boolean]
          #
          #   @param supports_plaid [Boolean] Whether the payer can link this method by signing in to their bank instead of ty
          #
          #   @param supports_standard_delivery [Boolean]

          # How funds are delivered.
          #
          # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::SupportedPayoutMethod#delivery_type
          module DeliveryType
            extend WhopSDK::Internal::Type::Enum

            CASH_PICKUP = :cash_pickup
            BANK_DEPOSIT = :bank_deposit
            HOME_DELIVERY = :home_delivery
            MOBILE_WALLET = :mobile_wallet
            CARD = :card
            CHECK = :check
            BILL = :bill
            CRYPTOCURRENCY = :cryptocurrency
            UNKNOWN = :unknown

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Why this method is unavailable: `destination_retired` means the payout provider
        # stopped offering the destination. Whop may automatically remap an eligible
        # method that was not linked through Plaid to a compatible replacement; otherwise,
        # the account owner must re-add it. `null` means no unavailability reason is
        # known.
        #
        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#unavailable_reason
        module UnavailableReason
          extend WhopSDK::Internal::Type::Enum

          DESTINATION_RETIRED = :destination_retired

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
