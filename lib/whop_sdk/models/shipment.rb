# frozen_string_literal: true

module WhopSDK
  module Models
    class Shipment < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Shipment ID, prefixed `ship_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The account that owns this shipment, prefixed `biz_`.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute carrier
      #   The shipping carrier detected for this shipment. Null until a tracking update
      #   identifies it.
      #
      #   @return [String, nil]
      required :carrier, String, nil?: true

      # @!attribute checkpoints
      #
      #   @return [Array<WhopSDK::Models::Shipment::Checkpoint>]
      required :checkpoints, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Shipment::Checkpoint] }

      # @!attribute created_at
      #   The datetime the shipment was created (ISO 8601).
      #
      #   @return [String]
      required :created_at, String

      # @!attribute payment_id
      #   The payment this shipment fulfills, prefixed `pay_`.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute status
      #   The current delivery status of this shipment.
      #
      #   @return [Symbol, WhopSDK::Models::Shipment::Status]
      required :status, enum: -> { WhopSDK::Shipment::Status }

      # @!attribute tracking_number
      #   The carrier-assigned tracking number used to look up shipment progress.
      #
      #   @return [String]
      required :tracking_number, String

      # @!attribute tracking_url
      #   A customer-facing URL to track this shipment's progress.
      #
      #   @return [String]
      required :tracking_url, String

      # @!attribute updated_at
      #   The datetime the shipment was last updated (ISO 8601).
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, account_id:, carrier:, checkpoints:, created_at:, payment_id:, status:, tracking_number:, tracking_url:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Shipment} for more details.
      #
      #   @param id [String] Shipment ID, prefixed `ship_`.
      #
      #   @param account_id [String] The account that owns this shipment, prefixed `biz_`.
      #
      #   @param carrier [String, nil] The shipping carrier detected for this shipment. Null until a tracking update id
      #
      #   @param checkpoints [Array<WhopSDK::Models::Shipment::Checkpoint>]
      #
      #   @param created_at [String] The datetime the shipment was created (ISO 8601).
      #
      #   @param payment_id [String] The payment this shipment fulfills, prefixed `pay_`.
      #
      #   @param status [Symbol, WhopSDK::Models::Shipment::Status] The current delivery status of this shipment.
      #
      #   @param tracking_number [String] The carrier-assigned tracking number used to look up shipment progress.
      #
      #   @param tracking_url [String] A customer-facing URL to track this shipment's progress.
      #
      #   @param updated_at [String] The datetime the shipment was last updated (ISO 8601).

      class Checkpoint < WhopSDK::Internal::Type::BaseModel
        # @!attribute location
        #   Where the carrier recorded the scan, such as `PHILADELPHIA, PA`. Null when the
        #   carrier sent none.
        #
        #   @return [String, nil]
        required :location, String, nil?: true

        # @!attribute message
        #   Carrier's description of the scan, such as `Departed USPS Regional Facility`.
        #   Null when the carrier sent none.
        #
        #   @return [String, nil]
        required :message, String, nil?: true

        # @!attribute status
        #   Delivery status this carrier scan maps to.
        #
        #   @return [Symbol, WhopSDK::Models::Shipment::Checkpoint::Status]
        required :status, enum: -> { WhopSDK::Shipment::Checkpoint::Status }

        # @!attribute timestamp
        #   When the carrier recorded the scan, as an ISO 8601 timestamp. Null when the
        #   carrier sent no scan time.
        #
        #   @return [String, nil]
        required :timestamp, String, nil?: true

        # @!method initialize(location:, message:, status:, timestamp:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Shipment::Checkpoint} for more details.
        #
        #   Carrier scan history for this shipment, oldest scan first. Empty until the
        #   carrier reports its first scan.
        #
        #   @param location [String, nil] Where the carrier recorded the scan, such as `PHILADELPHIA, PA`. Null when the c
        #
        #   @param message [String, nil] Carrier's description of the scan, such as `Departed USPS Regional Facility`. Nu
        #
        #   @param status [Symbol, WhopSDK::Models::Shipment::Checkpoint::Status] Delivery status this carrier scan maps to.
        #
        #   @param timestamp [String, nil] When the carrier recorded the scan, as an ISO 8601 timestamp. Null when the carr

        # Delivery status this carrier scan maps to.
        #
        # @see WhopSDK::Models::Shipment::Checkpoint#status
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

      # The current delivery status of this shipment.
      #
      # @see WhopSDK::Models::Shipment#status
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
