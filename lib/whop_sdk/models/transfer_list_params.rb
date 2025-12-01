# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Transfers#list
    class TransferListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute created_after
      #   The minimum creation date to filter by
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   The maximum creation date to filter by
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

      # @!attribute destination_id
      #   Filter transfers to only those that were sent to this destination account.
      #   (user_xxx, biz_xxx, ldgr_xxx)
      #
      #   @return [String, nil]
      optional :destination_id, String, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute order
      #   Which columns can be used to sort.
      #
      #   @return [Symbol, WhopSDK::Models::TransferListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::TransferListParams::Order }, nil?: true

      # @!attribute origin_id
      #   Filter transfers to only those that were sent from this origin account.
      #   (user_xxx, biz_xxx, ldgr_xxx)
      #
      #   @return [String, nil]
      optional :origin_id, String, nil?: true

      # @!method initialize(after: nil, before: nil, created_after: nil, created_before: nil, destination_id: nil, direction: nil, first: nil, last: nil, order: nil, origin_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TransferListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time, nil] The minimum creation date to filter by
      #
      #   @param created_before [Time, nil] The maximum creation date to filter by
      #
      #   @param destination_id [String, nil] Filter transfers to only those that were sent to this destination account. (user
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::TransferListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param origin_id [String, nil] Filter transfers to only those that were sent from this origin account. (user_xx
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Which columns can be used to sort.
      module Order
        extend WhopSDK::Internal::Type::Enum

        AMOUNT = :amount
        CREATED_AT = :created_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
