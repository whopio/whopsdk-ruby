# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ResolutionCenterCases#list
    class ResolutionCenterCaseListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Only cases filed against this account (`biz_` tag). With read access to the
      #   account this lists its whole queue; without, only the cases you opened against
      #   it.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor; returns cases after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns cases before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only cases created after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only cases created before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::ResolutionCenterCaseListParams::Direction }

      # @!attribute first
      #   The number of cases to return (default 20, max 100).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of cases to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort cases by.
      #
      #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::ResolutionCenterCaseListParams::Order }

      # @!attribute outcome
      #   Only closed cases that ended these ways. Repeat the parameter to pass several.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Outcome>, nil]
      optional :outcome,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseListParams::Outcome] }

      # @!attribute reason
      #   Only cases opened for these reasons. Repeat the parameter to pass several.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Reason>, nil]
      optional :reason,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseListParams::Reason] }

      # @!attribute status
      #   Only cases in these statuses. Repeat the parameter to pass several — one
      #   paginated list covers all of them.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Status>, nil]
      optional :status,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseListParams::Status] }

      # @!attribute user_id
      #   Only cases opened by this customer — a `user_` tag, or `me` for the calling
      #   user. It narrows what you can already read, so `me` lists the cases you opened
      #   without the ones on accounts you are a team member of.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, outcome: nil, reason: nil, status: nil, user_id: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ResolutionCenterCaseListParams} for more details.
      #
      #   @param account_id [String] Only cases filed against this account (`biz_` tag). With read access to the acco
      #
      #   @param after [String] A cursor; returns cases after this position.
      #
      #   @param before [String] A cursor; returns cases before this position.
      #
      #   @param created_after [String] Only cases created after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only cases created before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Direction] Sort direction.
      #
      #   @param first [Integer] The number of cases to return (default 20, max 100).
      #
      #   @param last [Integer] The number of cases to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Order] The field to sort cases by.
      #
      #   @param outcome [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Outcome>] Only closed cases that ended these ways. Repeat the parameter to pass several.
      #
      #   @param reason [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Reason>] Only cases opened for these reasons. Repeat the parameter to pass several.
      #
      #   @param status [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Status>] Only cases in these statuses. Repeat the parameter to pass several — one paginat
      #
      #   @param user_id [String] Only cases opened by this customer — a `user_` tag, or `me` for the calling user
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort cases by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        RESPONSE_DUE_AT = :response_due_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Outcome
        extend WhopSDK::Internal::Type::Enum

        CUSTOMER_WON = :customer_won
        MERCHANT_WON = :merchant_won
        WITHDRAWN = :withdrawn

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
