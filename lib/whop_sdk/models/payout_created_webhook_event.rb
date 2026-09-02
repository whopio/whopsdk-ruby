# frozen_string_literal: true

module WhopSDK
  module Models
    class PayoutCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::PayoutCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::PayoutCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"payout.created"]
      required :type, const: :"payout.created"

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

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"payout.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PayoutCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::PayoutCreatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"payout.created"] The webhook event type

      # @see WhopSDK::Models::PayoutCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Payout ID, prefixed `wdrl_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The payout amount in whole currency units, as a decimal string.
        #
        #   @return [String]
        required :amount, String

        # @!attribute created_at
        #   When the payout was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   Payout currency.
        #
        #   @return [String]
        required :currency, String

        # @!attribute destination_amount
        #   The amount delivered in the destination currency, as a decimal string. Assigned
        #   when the payout is processed, so it is `null` before then and on payouts without
        #   a recorded conversion.
        #
        #   @return [String, nil]
        required :destination_amount, String, nil?: true

        # @!attribute destination_currency
        #   Currency the funds are delivered in, taken from the payout method when the
        #   payout is created. On a stablecoin payout it follows the settlement payout
        #   minted alongside it — the `GET /payouts` row carrying this payout's id as
        #   `payout_request_id` — and is `null` only when no settlement payout exists.
        #
        #   @return [String, nil]
        required :destination_currency, String, nil?: true

        # @!attribute estimated_arrival
        #   Estimated time the funds become available in the destination account.
        #
        #   @return [Time, nil]
        required :estimated_arrival, Time, nil?: true

        # @!attribute exchange_rate
        #   Exchange rate from the payout currency to the destination currency. Assigned
        #   when the payout is processed, so it is `null` before then and on payouts without
        #   a recorded rate.
        #
        #   @return [Float, nil]
        required :exchange_rate, Float, nil?: true

        # @!attribute failure
        #   Why the payout ended without paying, or why it reversed after settlement.
        #   Present on failed, canceled, denied, and reversed payouts; `null` otherwise.
        #
        #   @return [WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Failure, nil]
        required :failure, -> { WhopSDK::PayoutCreatedWebhookEvent::Data::Failure }, nil?: true

        # @!attribute fee_amount
        #   The fee charged for the payout, in the payout currency, as a decimal string.
        #
        #   @return [String]
        required :fee_amount, String

        # @!attribute fee_paid_by
        #   Who bore the payout fee: the account itself, or its parent platform.
        #
        #   @return [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::FeePaidBy]
        required :fee_paid_by, enum: -> { WhopSDK::PayoutCreatedWebhookEvent::Data::FeePaidBy }

        # @!attribute markup_fee
        #   Whop's markup on the provider fee, in the payout currency, as a decimal string.
        #   `"0.0"` when none applies.
        #
        #   @return [String]
        required :markup_fee, String

        # @!attribute metadata
        #   Key-value data attached at creation and echoed on every read. At most 50 keys,
        #   key names up to 40 characters, string values up to 500 characters.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, WhopSDK::Internal::Type::HashOf[String]

        # @!attribute net_amount
        #   The planned net for the destination, in the payout currency: amount minus
        #   fee_amount minus markup_fee when fee_paid_by is `self`; equal to amount when the
        #   platform covers the fees. A payout that ends denied, canceled, or failed
        #   delivered nothing — most keep the planned figure and `failure` says where the
        #   funds are, but a canceled stablecoin payout can report the settled outcome
        #   instead: `amount` carries what stayed in the balance, fees are zero because none
        #   were charged, and `net_amount` is 0 because nothing was delivered.
        #
        #   @return [String]
        required :net_amount, String

        # @!attribute notes
        #   Free-form notes attached by the payout creator, or `null` when none were
        #   provided. Maximum 255 characters.
        #
        #   @return [String, nil]
        required :notes, String, nil?: true

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Object]
        required :object, enum: -> { WhopSDK::PayoutCreatedWebhookEvent::Data::Object }

        # @!attribute payer_name
        #   Name of the entity processing the payout.
        #
        #   @return [String, nil]
        required :payer_name, String, nil?: true

        # @!attribute payout_method
        #   The saved payout method used. Requires payout:destination:read; null without it.
        #
        #   @return [WhopSDK::Models::PayoutCreatedWebhookEvent::Data::PayoutMethod, nil]
        required :payout_method, -> { WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod }, nil?: true

        # @!attribute payout_request_id
        #   Payout request ID, prefixed `cofr_`, returned by `POST /payouts`. Match it to
        #   the settled payout in `GET /payouts`. Returns `null` for payouts not created by
        #   `POST /payouts`.
        #
        #   @return [String, nil]
        required :payout_request_id, String, nil?: true

        # @!attribute source
        #   How the payout was created. `automatic` means a scheduled auto-payout; `null` on
        #   payouts created before source tracking or through internal tooling.
        #
        #   @return [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Source, nil]
        required :source, enum: -> { WhopSDK::PayoutCreatedWebhookEvent::Data::Source }, nil?: true

        # @!attribute speed
        #   Payout delivery speed.
        #
        #   @return [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Speed]
        required :speed, enum: -> { WhopSDK::PayoutCreatedWebhookEvent::Data::Speed }

        # @!attribute statement_descriptor
        #   Text that appears on the recipient's bank statement, or `null` if no descriptor
        #   was set. When set, 5-22 alphanumeric characters (A-Z, a-z, 0-9).
        #
        #   @return [String, nil]
        required :statement_descriptor, String, nil?: true

        # @!attribute status
        #   Current payout status.
        #
        #   @return [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::PayoutCreatedWebhookEvent::Data::Status }

        # @!attribute status_detail
        #   The finest machine phase under `status` — for example
        #   `awaiting_provider_acceptance` vs `in_transit` under `processing`, or the
        #   stablecoin conversion phase under `requested`. Informational vocabulary: values
        #   can be added without a version bump; `status` is the versioned contract.
        #
        #   @return [String]
        required :status_detail, String

        # @!attribute trace_code
        #   ACH trace number the recipient's bank can use to locate this payout. Assigned
        #   when the payout is submitted to the bank, so it is `null` before then and on
        #   payouts not sent over ACH.
        #
        #   @return [String, nil]
        required :trace_code, String, nil?: true

        # @!method initialize(id:, amount:, created_at:, currency:, destination_amount:, destination_currency:, estimated_arrival:, exchange_rate:, failure:, fee_amount:, fee_paid_by:, markup_fee:, metadata:, net_amount:, notes:, object:, payer_name:, payout_method:, payout_request_id:, source:, speed:, statement_descriptor:, status:, status_detail:, trace_code:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PayoutCreatedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Payout ID, prefixed `wdrl_`.
        #
        #   @param amount [String] The payout amount in whole currency units, as a decimal string.
        #
        #   @param created_at [Time] When the payout was created.
        #
        #   @param currency [String] Payout currency.
        #
        #   @param destination_amount [String, nil] The amount delivered in the destination currency, as a decimal string. Assigned
        #
        #   @param destination_currency [String, nil] Currency the funds are delivered in, taken from the payout method when the payou
        #
        #   @param estimated_arrival [Time, nil] Estimated time the funds become available in the destination account.
        #
        #   @param exchange_rate [Float, nil] Exchange rate from the payout currency to the destination currency. Assigned whe
        #
        #   @param failure [WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Failure, nil] Why the payout ended without paying, or why it reversed after settlement. Presen
        #
        #   @param fee_amount [String] The fee charged for the payout, in the payout currency, as a decimal string.
        #
        #   @param fee_paid_by [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::FeePaidBy] Who bore the payout fee: the account itself, or its parent platform.
        #
        #   @param markup_fee [String] Whop's markup on the provider fee, in the payout currency, as a decimal string.
        #
        #   @param metadata [Hash{Symbol=>String}] Key-value data attached at creation and echoed on every read. At most 50 keys, k
        #
        #   @param net_amount [String] The planned net for the destination, in the payout currency: amount minus fee_am
        #
        #   @param notes [String, nil] Free-form notes attached by the payout creator, or `null` when none were provide
        #
        #   @param object [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Object]
        #
        #   @param payer_name [String, nil] Name of the entity processing the payout.
        #
        #   @param payout_method [WhopSDK::Models::PayoutCreatedWebhookEvent::Data::PayoutMethod, nil] The saved payout method used. Requires payout:destination:read; null without it.
        #
        #   @param payout_request_id [String, nil] Payout request ID, prefixed `cofr_`, returned by `POST /payouts`. Match it to th
        #
        #   @param source [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Source, nil] How the payout was created. `automatic` means a scheduled auto-payout; `null` on
        #
        #   @param speed [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Speed] Payout delivery speed.
        #
        #   @param statement_descriptor [String, nil] Text that appears on the recipient's bank statement, or `null` if no descriptor
        #
        #   @param status [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Status] Current payout status.
        #
        #   @param status_detail [String] The finest machine phase under `status` — for example `awaiting_provider_accepta
        #
        #   @param trace_code [String, nil] ACH trace number the recipient's bank can use to locate this payout. Assigned wh

        # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data#failure
        class Failure < WhopSDK::Internal::Type::BaseModel
          # @!attribute code
          #   Classified failure code from the maintained error catalog.
          #
          #   @return [String, nil]
          required :code, String, nil?: true

          # @!attribute funds_returned_at
          #   The effective time of the reversal that put the funds back in the balance —
          #   `null` if they never left it or have not returned yet. Set only once the return
          #   is confirmed in the ledger; the ledger posting itself can land moments after
          #   this time.
          #
          #   @return [Time, nil]
          required :funds_returned_at, Time, nil?: true

          # @!attribute message
          #   Human-readable explanation of the failure. Callers holding
          #   `payout:destination:read` may receive text personalized to the destination;
          #   other callers get the generic catalog message.
          #
          #   @return [String, nil]
          required :message, String, nil?: true

          # @!method initialize(code:, funds_returned_at:, message:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PayoutCreatedWebhookEvent::Data::Failure} for more details.
          #
          #   Why the payout ended without paying, or why it reversed after settlement.
          #   Present on failed, canceled, denied, and reversed payouts; `null` otherwise.
          #
          #   @param code [String, nil] Classified failure code from the maintained error catalog.
          #
          #   @param funds_returned_at [Time, nil] The effective time of the reversal that put the funds back in the balance — `nul
          #
          #   @param message [String, nil] Human-readable explanation of the failure. Callers holding `payout:destination:r
        end

        # Who bore the payout fee: the account itself, or its parent platform.
        #
        # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data#fee_paid_by
        module FeePaidBy
          extend WhopSDK::Internal::Type::Enum

          SELF = :self
          PLATFORM = :platform

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          PAYOUT = :payout

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data#payout_method
        class PayoutMethod < WhopSDK::Internal::Type::BaseModel
          # @!attribute nickname
          #   Saved payout method nickname.
          #
          #   @return [String, nil]
          required :nickname, String, nil?: true

          # @!attribute supported_payout_method
          #   Supported payout method display details.
          #
          #   @return [WhopSDK::Models::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod, nil]
          required :supported_payout_method,
                   -> { WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod },
                   nil?: true

          # @!method initialize(nickname:, supported_payout_method:)
          #   The saved payout method used. Requires payout:destination:read; null without it.
          #
          #   @param nickname [String, nil] Saved payout method nickname.
          #
          #   @param supported_payout_method [WhopSDK::Models::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod, nil] Supported payout method display details.

          # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data::PayoutMethod#supported_payout_method
          class SupportedPayoutMethod < WhopSDK::Internal::Type::BaseModel
            # @!attribute delivery_type
            #   How the funds are delivered to the recipient.
            #
            #   @return [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType]
            required :delivery_type,
                     enum: -> { WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType }

            # @!attribute icon_url
            #   Supported payout method icon URL.
            #
            #   @return [String, nil]
            required :icon_url, String, nil?: true

            # @!attribute payer_name
            #   Supported payout method display name.
            #
            #   @return [String, nil]
            required :payer_name, String, nil?: true

            # @!method initialize(delivery_type:, icon_url:, payer_name:)
            #   Supported payout method display details.
            #
            #   @param delivery_type [Symbol, WhopSDK::Models::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType] How the funds are delivered to the recipient.
            #
            #   @param icon_url [String, nil] Supported payout method icon URL.
            #
            #   @param payer_name [String, nil] Supported payout method display name.

            # How the funds are delivered to the recipient.
            #
            # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod#delivery_type
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
        end

        # How the payout was created. `automatic` means a scheduled auto-payout; `null` on
        # payouts created before source tracking or through internal tooling.
        #
        # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data#source
        module Source
          extend WhopSDK::Internal::Type::Enum

          API = :api
          DASHBOARD = :dashboard
          AUTOMATIC = :automatic

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Payout delivery speed.
        #
        # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data#speed
        module Speed
          extend WhopSDK::Internal::Type::Enum

          STANDARD = :standard
          INSTANT = :instant

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Current payout status.
        #
        # @see WhopSDK::Models::PayoutCreatedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          REQUESTED = :requested
          IN_REVIEW = :in_review
          PROCESSING = :processing
          COMPLETED = :completed
          REVERSED = :reversed
          CANCELED = :canceled
          FAILED = :failed
          DENIED = :denied

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
