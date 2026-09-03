# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Refunds#list
    class RefundListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Only refunds issued by this account, prefixed `biz_`.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor; returns refunds after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns refunds before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only refunds requested after this ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only refunds requested before this ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute direction
      #   The sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::RefundListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::RefundListParams::Direction }

      # @!attribute first
      #   The number of refunds to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of refunds to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort by.
      #
      #   @return [Symbol, WhopSDK::Models::RefundListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::RefundListParams::Order }

      # @!attribute payment_id
      #   Only refunds of this payment, prefixed `pay_`.
      #
      #   @return [String, nil]
      optional :payment_id, String

      # @!attribute user_id
      #   Only refunds to this buyer, prefixed `user_`.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, payment_id: nil, user_id: nil, api_version_date: nil, request_options: {})
      #   @param account_id [String] Only refunds issued by this account, prefixed `biz_`.
      #
      #   @param after [String] A cursor; returns refunds after this position.
      #
      #   @param before [String] A cursor; returns refunds before this position.
      #
      #   @param created_after [Time] Only refunds requested after this ISO 8601 timestamp.
      #
      #   @param created_before [Time] Only refunds requested before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::RefundListParams::Direction] The sort direction.
      #
      #   @param first [Integer] The number of refunds to return.
      #
      #   @param last [Integer] The number of refunds to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::RefundListParams::Order] The field to sort by.
      #
      #   @param payment_id [String] Only refunds of this payment, prefixed `pay_`.
      #
      #   @param user_id [String] Only refunds to this buyer, prefixed `user_`.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
