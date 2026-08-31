# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Shipments#list
    class ShipmentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The account to list shipments for. Defaults to the acting account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor; returns shipments after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns shipments before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Return shipments created after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Return shipments created before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   The sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::ShipmentListParams::Direction }

      # @!attribute first
      #   The number of shipments to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of shipments to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort by.
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::ShipmentListParams::Order }

      # @!attribute payment_id
      #   Only shipments fulfilling these payments, each prefixed `pay_`. Repeat the
      #   parameter to pass several, up to 100 per request — one paginated list covers all
      #   of them.
      #
      #   @return [Array<String>, nil]
      optional :payment_id, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute status
      #   Filter to shipments with this delivery status.
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::ShipmentListParams::Status }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, payment_id: nil, status: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ShipmentListParams} for more details.
      #
      #   @param account_id [String] The account to list shipments for. Defaults to the acting account.
      #
      #   @param after [String] A cursor; returns shipments after this position.
      #
      #   @param before [String] A cursor; returns shipments before this position.
      #
      #   @param created_after [String] Return shipments created after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Return shipments created before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::ShipmentListParams::Direction] The sort direction.
      #
      #   @param first [Integer] The number of shipments to return.
      #
      #   @param last [Integer] The number of shipments to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::ShipmentListParams::Order] The field to sort by.
      #
      #   @param payment_id [Array<String>] Only shipments fulfilling these payments, each prefixed `pay_`. Repeat the param
      #
      #   @param status [Symbol, WhopSDK::Models::ShipmentListParams::Status] Filter to shipments with this delivery status.
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

      # Filter to shipments with this delivery status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        UNKNOWN = :unknown
        PRE_TRANSIT = :pre_transit
        IN_TRANSIT = :in_transit
        OUT_FOR_DELIVERY = :out_for_delivery
        DELIVERED = :delivered
        AVAILABLE_FOR_PICKUP = :available_for_pickup
        RETURN_TO_SENDER = :return_to_sender
        FAILURE = :failure
        CANCELLED = :cancelled
        ERROR = :error

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
