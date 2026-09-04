# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ResolutionCenterCases#list
    class ResolutionCenterCaseListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Resolution center case ID, prefixed `reso_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account
      #   The account the case was filed against.
      #
      #   @return [WhopSDK::Models::ResolutionCenterCaseListResponse::Account, nil]
      required :account, -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Account }, nil?: true

      # @!attribute amount
      #   The amount in question, in whole units of `currency`.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute available_actions
      #
      #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::AvailableAction>]
      required :available_actions,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::ResolutionCenterCaseListResponse::AvailableAction] }

      # @!attribute buyer
      #   The customer who opened the case.
      #
      #   @return [WhopSDK::Models::ResolutionCenterCaseListResponse::Buyer]
      required :buyer, -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Buyer }

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

      # @!attribute line_items
      #
      #   @return [Array<WhopSDK::Models::ResolutionCenterCaseListResponse::LineItem>]
      required :line_items,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::ResolutionCenterCaseListResponse::LineItem] }

      # @!attribute outcome
      #   Who prevailed on the claim. `null` until the case closes. Read `refund` for
      #   whether any money actually moved.
      #
      #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::Outcome, nil]
      required :outcome, enum: -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Outcome }, nil?: true

      # @!attribute payment
      #   The payment the case was opened against.
      #
      #   @return [WhopSDK::Models::ResolutionCenterCaseListResponse::Payment]
      required :payment, -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Payment }

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
      #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::Reason]
      required :reason, enum: -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Reason }

      # @!attribute refund
      #   Whether money moved and off whose balance: `none`, `merchant`, or `platform`
      #   (Whop refunded the customer and the merchant kept the funds). Independent of
      #   `outcome` — a case the merchant won can still carry a platform refund. `null`
      #   while the case is open, and on older closed cases that predate this being
      #   recorded.
      #
      #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::Refund, nil]
      required :refund, enum: -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Refund }, nil?: true

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
      #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Status }

      # @!attribute updated_at
      #   When the case was last changed, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, account:, amount:, available_actions:, buyer:, created_at:, currency:, customer_appealed:, escalated:, line_items:, outcome:, payment:, plan_id:, product_id:, reason:, refund:, response_due_at:, status:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ResolutionCenterCaseListResponse} for more details.
      #
      #   @param id [String] Resolution center case ID, prefixed `reso_`.
      #
      #   @param account [WhopSDK::Models::ResolutionCenterCaseListResponse::Account, nil] The account the case was filed against.
      #
      #   @param amount [Float] The amount in question, in whole units of `currency`.
      #
      #   @param available_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::AvailableAction>]
      #
      #   @param buyer [WhopSDK::Models::ResolutionCenterCaseListResponse::Buyer] The customer who opened the case.
      #
      #   @param created_at [String] When the case was opened, as an ISO 8601 timestamp.
      #
      #   @param currency [String, nil] Three-letter ISO currency code of the amount.
      #
      #   @param customer_appealed [Boolean] Whether the customer has appealed a decision on this case.
      #
      #   @param escalated [Boolean] Whether Whop is involved — either reviewing the case, or waiting on the side nam
      #
      #   @param line_items [Array<WhopSDK::Models::ResolutionCenterCaseListResponse::LineItem>]
      #
      #   @param outcome [Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::Outcome, nil] Who prevailed on the claim. `null` until the case closes. Read `refund` for whet
      #
      #   @param payment [WhopSDK::Models::ResolutionCenterCaseListResponse::Payment] The payment the case was opened against.
      #
      #   @param plan_id [String, nil] The plan the payment was made on, prefixed `plan_`.
      #
      #   @param product_id [String, nil] The product the payment was for, prefixed `prod_`.
      #
      #   @param reason [Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::Reason] What the customer says went wrong. Shares the `/disputes` vocabulary, so a case
      #
      #   @param refund [Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::Refund, nil] Whether money moved and off whose balance: `none`, `merchant`, or `platform` (Wh
      #
      #   @param response_due_at [String, nil] When the next response is due, as an ISO 8601 timestamp.
      #
      #   @param status [Symbol, WhopSDK::Models::ResolutionCenterCaseListResponse::Status] Who the case is waiting on. `awaiting_merchant` and `awaiting_customer` name the
      #
      #   @param updated_at [String] When the case was last changed, as an ISO 8601 timestamp.

      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#account
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

      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#buyer
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
        #   {WhopSDK::Models::ResolutionCenterCaseListResponse::Buyer} for more details.
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

      class LineItem < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Line item ID, prefixed `li_`. Null when the payment predates item snapshots and
        #   the item is read from the payment's plan.
        #
        #   @return [String, nil]
        required :id, String, nil?: true

        # @!attribute label
        #   The item's name as shown at checkout — the product title, else the plan title.
        #
        #   @return [String, nil]
        required :label, String, nil?: true

        # @!attribute plan_id
        #   The plan bought, prefixed `plan_`. Null when the plan has since been deleted.
        #
        #   @return [String, nil]
        required :plan_id, String, nil?: true

        # @!attribute product_id
        #   The product the plan belongs to, prefixed `prod_`. On a payment that predates
        #   item snapshots this falls back to the plan's product, so it can be set where the
        #   case's own `product_id` is null. Null for a plan with no product.
        #
        #   @return [String, nil]
        required :product_id, String, nil?: true

        # @!attribute quantity
        #   How many units were bought.
        #
        #   @return [Float]
        required :quantity, Float

        # @!method initialize(id:, label:, plan_id:, product_id:, quantity:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ResolutionCenterCaseListResponse::LineItem} for more details.
        #
        #   Everything the disputed payment charged for, in purchase order. `product_id` and
        #   `plan_id` name the first of these; a cart's later items appear only here. A
        #   payment made before items were recorded lists the single item its plan implies.
        #   Empty when the payment is not linked to a plan.
        #
        #   @param id [String, nil] Line item ID, prefixed `li_`. Null when the payment predates item snapshots and
        #
        #   @param label [String, nil] The item's name as shown at checkout — the product title, else the plan title.
        #
        #   @param plan_id [String, nil] The plan bought, prefixed `plan_`. Null when the plan has since been deleted.
        #
        #   @param product_id [String, nil] The product the plan belongs to, prefixed `prod_`. On a payment that predates it
        #
        #   @param quantity [Float] How many units were bought.
      end

      # Who prevailed on the claim. `null` until the case closes. Read `refund` for
      # whether any money actually moved.
      #
      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#outcome
      module Outcome
        extend WhopSDK::Internal::Type::Enum

        CUSTOMER_WON = :customer_won
        MERCHANT_WON = :merchant_won
        WITHDRAWN = :withdrawn

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#payment
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
      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#reason
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
      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#refund
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
      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#status
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
