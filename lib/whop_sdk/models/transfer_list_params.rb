# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Transfers#list
    class TransferListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only transfers created strictly after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only transfers created strictly before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute destination_id
      #   Filter to transfers received by this account. Provide this or origin_id.
      #
      #   @return [String, nil]
      optional :destination_id, String

      # @!attribute direction
      #   Sort direction. Defaults to desc.
      #
      #   @return [Symbol, WhopSDK::Models::TransferListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::TransferListParams::Direction }

      # @!attribute first
      #   Number of transfers to return from the start of the window.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of transfers to return from the end of the window.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   Sort column. Defaults to created_at.
      #
      #   @return [Symbol, WhopSDK::Models::TransferListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::TransferListParams::Order }

      # @!attribute origin_id
      #   Filter to transfers sent from this account. Provide this or destination_id.
      #
      #   @return [String, nil]
      optional :origin_id, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(after: nil, before: nil, created_after: nil, created_before: nil, destination_id: nil, direction: nil, first: nil, last: nil, order: nil, origin_id: nil, api_version_date: nil, request_options: {})
      #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @param created_after [String] Only transfers created strictly after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only transfers created strictly before this ISO 8601 timestamp.
      #
      #   @param destination_id [String] Filter to transfers received by this account. Provide this or origin_id.
      #
      #   @param direction [Symbol, WhopSDK::Models::TransferListParams::Direction] Sort direction. Defaults to desc.
      #
      #   @param first [Integer] Number of transfers to return from the start of the window.
      #
      #   @param last [Integer] Number of transfers to return from the end of the window.
      #
      #   @param order [Symbol, WhopSDK::Models::TransferListParams::Order] Sort column. Defaults to created_at.
      #
      #   @param origin_id [String] Filter to transfers sent from this account. Provide this or destination_id.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Sort direction. Defaults to desc.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort column. Defaults to created_at.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        AMOUNT = :amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
