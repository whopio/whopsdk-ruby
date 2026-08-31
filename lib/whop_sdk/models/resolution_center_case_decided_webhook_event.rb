# frozen_string_literal: true

module WhopSDK
  module Models
    class ResolutionCenterCaseDecidedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data]
      required :data, -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"resolution_center_case.decided"]
      required :type, const: :"resolution_center_case.decided"

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

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"resolution_center_case.decided")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"resolution_center_case.decided"] The webhook event type

      # @see WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Resolution center case ID, prefixed `reso_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute account
        #   The account the case was filed against.
        #
        #   @return [WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Account, nil]
        required :account, -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data::Account }, nil?: true

        # @!attribute amount
        #   The amount in question, in whole units of `currency`.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute available_actions
        #
        #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::AvailableAction>]
        required :available_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data::AvailableAction] }

        # @!attribute buyer
        #   The customer who opened the case.
        #
        #   @return [WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Buyer]
        required :buyer, -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data::Buyer }

        # @!attribute created_at
        #   When the case was opened, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute currency
        #   Three-letter ISO currency code of the amount.
        #
        #   @return [String, nil]
        required :currency, String, nil?: true

        # @!attribute customer_appealed
        #   Whether the customer has appealed a decision on this case.
        #
        #   @return [Boolean]
        required :customer_appealed, WhopSDK::Internal::Type::Boolean

        # @!attribute escalated
        #   Whether Whop is involved — either reviewing the case, or waiting on the side
        #   named by `status` for something it asked for while reviewing.
        #
        #   @return [Boolean]
        required :escalated, WhopSDK::Internal::Type::Boolean

        # @!attribute outcome
        #   Who prevailed on the claim. `null` until the case closes. Read `refund` for
        #   whether any money actually moved.
        #
        #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Outcome, nil]
        required :outcome,
                 enum: -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data::Outcome },
                 nil?: true

        # @!attribute payment
        #   The payment the case was opened against.
        #
        #   @return [WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Payment]
        required :payment, -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data::Payment }

        # @!attribute plan_id
        #   The plan the payment was made on, prefixed `plan_`.
        #
        #   @return [String, nil]
        required :plan_id, String, nil?: true

        # @!attribute product_id
        #   The product the payment was for, prefixed `prod_`.
        #
        #   @return [String, nil]
        required :product_id, String, nil?: true

        # @!attribute reason
        #   What the customer says went wrong. Shares the `/disputes` vocabulary, so a case
        #   that later becomes a chargeback reports the same complaint.
        #
        #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Reason]
        required :reason, enum: -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data::Reason }

        # @!attribute refund
        #   Whether money moved and off whose balance: `none`, `merchant`, or `platform`
        #   (Whop refunded the customer and the merchant kept the funds). Independent of
        #   `outcome` — a case the merchant won can still carry a platform refund. `null`
        #   while the case is open, and on older closed cases that predate this being
        #   recorded.
        #
        #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Refund, nil]
        required :refund,
                 enum: -> {
                   WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data::Refund
                 },
                 nil?: true

        # @!attribute response_due_at
        #   When the next response is due, as an ISO 8601 timestamp.
        #
        #   @return [String, nil]
        required :response_due_at, String, nil?: true

        # @!attribute status
        #   Who the case is waiting on. `awaiting_merchant` and `awaiting_customer` name the
        #   side that owes a response, `under_review` means Whop is deciding, and `closed`
        #   means it is settled — read `outcome` for how.
        #
        #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent::Data::Status }

        # @!attribute updated_at
        #   When the case was last changed, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :updated_at, String

        # @!method initialize(id:, account:, amount:, available_actions:, buyer:, created_at:, currency:, customer_appealed:, escalated:, outcome:, payment:, plan_id:, product_id:, reason:, refund:, response_due_at:, status:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data} for more
        #   details.
        #
        #   @param id [String] Resolution center case ID, prefixed `reso_`.
        #
        #   @param account [WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Account, nil] The account the case was filed against.
        #
        #   @param amount [Float] The amount in question, in whole units of `currency`.
        #
        #   @param available_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::AvailableAction>]
        #
        #   @param buyer [WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Buyer] The customer who opened the case.
        #
        #   @param created_at [String] When the case was opened, as an ISO 8601 timestamp.
        #
        #   @param currency [String, nil] Three-letter ISO currency code of the amount.
        #
        #   @param customer_appealed [Boolean] Whether the customer has appealed a decision on this case.
        #
        #   @param escalated [Boolean] Whether Whop is involved — either reviewing the case, or waiting on the side nam
        #
        #   @param outcome [Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Outcome, nil] Who prevailed on the claim. `null` until the case closes. Read `refund` for whet
        #
        #   @param payment [WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Payment] The payment the case was opened against.
        #
        #   @param plan_id [String, nil] The plan the payment was made on, prefixed `plan_`.
        #
        #   @param product_id [String, nil] The product the payment was for, prefixed `prod_`.
        #
        #   @param reason [Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Reason] What the customer says went wrong. Shares the `/disputes` vocabulary, so a case
        #
        #   @param refund [Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Refund, nil] Whether money moved and off whose balance: `none`, `merchant`, or `platform` (Wh
        #
        #   @param response_due_at [String, nil] When the next response is due, as an ISO 8601 timestamp.
        #
        #   @param status [Symbol, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Status] Who the case is waiting on. `awaiting_merchant` and `awaiting_customer` name the
        #
        #   @param updated_at [String] When the case was last changed, as an ISO 8601 timestamp.

        # @see WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data#account
        class Account < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Account ID, prefixed `biz_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute title
          #   Account display name.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, title:)
          #   The account the case was filed against.
          #
          #   @param id [String] Account ID, prefixed `biz_`.
          #
          #   @param title [String] Account display name.
        end

        # What you can do to this case right now, named for the endpoint that does it.
        # Resolved for the calling credential, so a merchant and a customer reading the
        # same case see their own options.
        module AvailableAction
          extend WhopSDK::Internal::Type::Enum

          ACCEPT = :accept
          DENY = :deny
          REQUEST_INFO = :request_info
          REPLY = :reply
          APPEAL = :appeal
          WITHDRAW = :withdraw

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data#buyer
        class Buyer < WhopSDK::Internal::Type::BaseModel
          # @!attribute email
          #   The customer's email address. Requires the `member:email:read` scope; `null`
          #   without it.
          #
          #   @return [String, nil]
          required :email, String, nil?: true

          # @!attribute member_id
          #   The customer's member row on the account, prefixed `mem_`.
          #
          #   @return [String, nil]
          required :member_id, String, nil?: true

          # @!attribute name
          #   The customer's display name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute user_id
          #   The customer's user ID, prefixed `user_`.
          #
          #   @return [String, nil]
          required :user_id, String, nil?: true

          # @!attribute username
          #   The customer's Whop username.
          #
          #   @return [String, nil]
          required :username, String, nil?: true

          # @!method initialize(email:, member_id:, name:, user_id:, username:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data::Buyer} for more
          #   details.
          #
          #   The customer who opened the case.
          #
          #   @param email [String, nil] The customer's email address. Requires the `member:email:read` scope; `null` wit
          #
          #   @param member_id [String, nil] The customer's member row on the account, prefixed `mem_`.
          #
          #   @param name [String, nil] The customer's display name.
          #
          #   @param user_id [String, nil] The customer's user ID, prefixed `user_`.
          #
          #   @param username [String, nil] The customer's Whop username.
        end

        # Who prevailed on the claim. `null` until the case closes. Read `refund` for
        # whether any money actually moved.
        #
        # @see WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data#outcome
        module Outcome
          extend WhopSDK::Internal::Type::Enum

          CUSTOMER_WON = :customer_won
          MERCHANT_WON = :merchant_won
          WITHDRAWN = :withdrawn

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data#payment
        class Payment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Payment ID, prefixed `pay_`.
          #
          #   @return [String]
          required :id, String

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
          #   When the payment was made, as an ISO 8601 timestamp.
          #
          #   @return [String]
          required :created_at, String

          # @!attribute payment_method_type
          #   How the customer paid, such as `card` or `paypal`.
          #
          #   @return [String, nil]
          required :payment_method_type, String, nil?: true

          # @!method initialize(id:, card_brand:, card_last4:, created_at:, payment_method_type:)
          #   The payment the case was opened against.
          #
          #   @param id [String] Payment ID, prefixed `pay_`.
          #
          #   @param card_brand [String, nil] Card brand, when the customer paid by card.
          #
          #   @param card_last4 [String, nil] Last four digits of the card, when the customer paid by card.
          #
          #   @param created_at [String] When the payment was made, as an ISO 8601 timestamp.
          #
          #   @param payment_method_type [String, nil] How the customer paid, such as `card` or `paypal`.
        end

        # What the customer says went wrong. Shares the `/disputes` vocabulary, so a case
        # that later becomes a chargeback reports the same complaint.
        #
        # @see WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data#reason
        module Reason
          extend WhopSDK::Internal::Type::Enum

          FRAUDULENT = :fraudulent
          PRODUCT_NOT_RECEIVED = :product_not_received
          NOT_AS_DESCRIBED = :not_as_described
          PRODUCT_UNACCEPTABLE = :product_unacceptable
          SUBSCRIPTION_CANCELED = :subscription_canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether money moved and off whose balance: `none`, `merchant`, or `platform`
        # (Whop refunded the customer and the merchant kept the funds). Independent of
        # `outcome` — a case the merchant won can still carry a platform refund. `null`
        # while the case is open, and on older closed cases that predate this being
        # recorded.
        #
        # @see WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data#refund
        module Refund
          extend WhopSDK::Internal::Type::Enum

          NONE = :none
          MERCHANT = :merchant
          PLATFORM = :platform

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Who the case is waiting on. `awaiting_merchant` and `awaiting_customer` name the
        # side that owes a response, `under_review` means Whop is deciding, and `closed`
        # means it is settled — read `outcome` for how.
        #
        # @see WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          AWAITING_MERCHANT = :awaiting_merchant
          AWAITING_CUSTOMER = :awaiting_customer
          UNDER_REVIEW = :under_review
          CLOSED = :closed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
