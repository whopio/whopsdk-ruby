# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Disputes#list
    class DisputeListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Only disputes filed against this account (`biz_` tag). Omit it to cover every
      #   account you can read.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   Return results after this cursor. Use `page_info.end_cursor` from the previous
      #   response to fetch the next page.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Return results before this cursor. Use `page_info.start_cursor` from the
      #   previous response to fetch the previous page.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only disputes opened after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only disputes opened before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute currency
      #   Only disputes in this three-letter ISO currency.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::DisputeListParams::Direction }

      # @!attribute first
      #   Number of results to return from the start of the range.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of results to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort disputes by.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::DisputeListParams::Order }

      # @!attribute status
      #   Only disputes in these statuses. Repeat the parameter to pass several — one
      #   paginated list covers all of them. Covers both chargebacks and inquiries at each
      #   stage. A `needs_response` dispute whose evidence deadline has passed reports and
      #   filters as `under_review` instead.
      #
      #   @return [Array<Symbol, WhopSDK::Models::DisputeListParams::Status>, nil]
      optional :status, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::DisputeListParams::Status] }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, currency: nil, direction: nil, first: nil, last: nil, order: nil, status: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DisputeListParams} for more details.
      #
      #   @param account_id [String] Only disputes filed against this account (`biz_` tag). Omit it to cover every ac
      #
      #   @param after [String] Return results after this cursor. Use `page_info.end_cursor` from the previous r
      #
      #   @param before [String] Return results before this cursor. Use `page_info.start_cursor` from the previou
      #
      #   @param created_after [String] Only disputes opened after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only disputes opened before this ISO 8601 timestamp.
      #
      #   @param currency [String] Only disputes in this three-letter ISO currency.
      #
      #   @param direction [Symbol, WhopSDK::Models::DisputeListParams::Direction] Sort direction.
      #
      #   @param first [Integer] Number of results to return from the start of the range.
      #
      #   @param last [Integer] Number of results to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::DisputeListParams::Order] The field to sort disputes by.
      #
      #   @param status [Array<Symbol, WhopSDK::Models::DisputeListParams::Status>] Only disputes in these statuses. Repeat the parameter to pass several — one pagi
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

      # The field to sort disputes by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        AMOUNT = :amount
        EVIDENCE_DUE_AT = :evidence_due_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Status
        extend WhopSDK::Internal::Type::Enum

        NEEDS_RESPONSE = :needs_response
        UNDER_REVIEW = :under_review
        WON = :won
        LOST = :lost
        CLOSED = :closed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
