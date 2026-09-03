# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#list
    class PaymentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Only payments charged by this account, prefixed `biz_`.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor; returns payments after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns payments before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute billing_reason
      #   Only payments charged for this reason.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListParams::BillingReason, nil]
      optional :billing_reason, enum: -> { WhopSDK::PaymentListParams::BillingReason }

      # @!attribute created_after
      #   Only payments created after this ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only payments created before this ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute currency
      #   Only payments presented in this three-letter currency, such as `usd`.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute direction
      #   The sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::PaymentListParams::Direction }

      # @!attribute first
      #   The number of payments to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of payments to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute member_id
      #   Only payments made by this member, prefixed `mber_`.
      #
      #   @return [String, nil]
      optional :member_id, String

      # @!attribute membership_id
      #   Only payments billed under this membership, prefixed `mem_`.
      #
      #   @return [String, nil]
      optional :membership_id, String

      # @!attribute order
      #   The field to sort by.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::PaymentListParams::Order }

      # @!attribute plan_id
      #   Only payments priced by this plan, prefixed `plan_`.
      #
      #   @return [String, nil]
      optional :plan_id, String

      # @!attribute product_id
      #   Only payments for this product, prefixed `prod_`.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute query
      #   Search payments by user ID, membership ID, user email, name, or username. Email
      #   filtering requires the member:email:read permission.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute status
      #   Only payments in this lifecycle state.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::PaymentListParams::Status }

      # @!attribute user_id
      #   Only payments made by this buyer, prefixed `user_`.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, before: nil, billing_reason: nil, created_after: nil, created_before: nil, currency: nil, direction: nil, first: nil, last: nil, member_id: nil, membership_id: nil, order: nil, plan_id: nil, product_id: nil, query: nil, status: nil, user_id: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentListParams} for more details.
      #
      #   @param account_id [String] Only payments charged by this account, prefixed `biz_`.
      #
      #   @param after [String] A cursor; returns payments after this position.
      #
      #   @param before [String] A cursor; returns payments before this position.
      #
      #   @param billing_reason [Symbol, WhopSDK::Models::PaymentListParams::BillingReason] Only payments charged for this reason.
      #
      #   @param created_after [Time] Only payments created after this ISO 8601 timestamp.
      #
      #   @param created_before [Time] Only payments created before this ISO 8601 timestamp.
      #
      #   @param currency [String] Only payments presented in this three-letter currency, such as `usd`.
      #
      #   @param direction [Symbol, WhopSDK::Models::PaymentListParams::Direction] The sort direction.
      #
      #   @param first [Integer] The number of payments to return.
      #
      #   @param last [Integer] The number of payments to return from the end of the range.
      #
      #   @param member_id [String] Only payments made by this member, prefixed `mber_`.
      #
      #   @param membership_id [String] Only payments billed under this membership, prefixed `mem_`.
      #
      #   @param order [Symbol, WhopSDK::Models::PaymentListParams::Order] The field to sort by.
      #
      #   @param plan_id [String] Only payments priced by this plan, prefixed `plan_`.
      #
      #   @param product_id [String] Only payments for this product, prefixed `prod_`.
      #
      #   @param query [String] Search payments by user ID, membership ID, user email, name, or username. Email
      #
      #   @param status [Symbol, WhopSDK::Models::PaymentListParams::Status] Only payments in this lifecycle state.
      #
      #   @param user_id [String] Only payments made by this buyer, prefixed `user_`.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Only payments charged for this reason.
      module BillingReason
        extend WhopSDK::Internal::Type::Enum

        SUBSCRIPTION_CREATE = :subscription_create
        SUBSCRIPTION_CYCLE = :subscription_cycle
        SUBSCRIPTION_UPDATE = :subscription_update
        ONE_TIME = :one_time
        MANUAL = :manual
        SUBSCRIPTION = :subscription

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        PAID_AT = :paid_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Only payments in this lifecycle state.
      module Status
        extend WhopSDK::Internal::Type::Enum

        OPEN = :open
        AUTHORIZED = :authorized
        PAID = :paid
        PENDING = :pending
        UNCOLLECTIBLE = :uncollectible
        UNRESOLVED = :unresolved
        VOID = :void

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
