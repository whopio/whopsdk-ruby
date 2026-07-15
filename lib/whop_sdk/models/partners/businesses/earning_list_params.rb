# frozen_string_literal: true

module WhopSDK
  module Models
    module Partners
      module Businesses
        # @see WhopSDK::Resources::Partners::Businesses::Earnings#list
        class EarningListParams < WhopSDK::Internal::Type::BaseModel
          extend WhopSDK::Internal::Type::RequestParameters::Converter
          include WhopSDK::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute after
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #
          #   @return [String, nil]
          optional :before, String

          # @!attribute created_after
          #   Only return earnings created after this timestamp.
          #
          #   @return [String, nil]
          optional :created_after, String

          # @!attribute created_before
          #   Only return earnings created before this timestamp.
          #
          #   @return [String, nil]
          optional :created_before, String

          # @!attribute direction
          #   Sort direction.
          #
          #   @return [Symbol, WhopSDK::Models::Partners::Businesses::EarningListParams::Direction, nil]
          optional :direction, enum: -> { WhopSDK::Partners::Businesses::EarningListParams::Direction }

          # @!attribute first
          #
          #   @return [Integer, nil]
          optional :first, Integer

          # @!attribute last
          #
          #   @return [Integer, nil]
          optional :last, Integer

          # @!attribute order
          #   The field to sort earnings by.
          #
          #   @return [Symbol, WhopSDK::Models::Partners::Businesses::EarningListParams::Order, nil]
          optional :order, enum: -> { WhopSDK::Partners::Businesses::EarningListParams::Order }

          # @!attribute status
          #   Filter by earning status.
          #
          #   @return [Symbol, WhopSDK::Models::Partners::Businesses::EarningListParams::Status, nil]
          optional :status, enum: -> { WhopSDK::Partners::Businesses::EarningListParams::Status }

          # @!method initialize(id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, status: nil, request_options: {})
          #   @param id [String]
          #
          #   @param after [String]
          #
          #   @param before [String]
          #
          #   @param created_after [String] Only return earnings created after this timestamp.
          #
          #   @param created_before [String] Only return earnings created before this timestamp.
          #
          #   @param direction [Symbol, WhopSDK::Models::Partners::Businesses::EarningListParams::Direction] Sort direction.
          #
          #   @param first [Integer]
          #
          #   @param last [Integer]
          #
          #   @param order [Symbol, WhopSDK::Models::Partners::Businesses::EarningListParams::Order] The field to sort earnings by.
          #
          #   @param status [Symbol, WhopSDK::Models::Partners::Businesses::EarningListParams::Status] Filter by earning status.
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

          # The field to sort earnings by.
          module Order
            extend WhopSDK::Internal::Type::Enum

            CREATED_AT = :created_at
            COMMISSION_AMOUNT = :commission_amount
            TRANSACTION_AMOUNT = :transaction_amount
            PAYOUT_AT = :payout_at

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter by earning status.
          module Status
            extend WhopSDK::Internal::Type::Enum

            AWAITING_SETTLEMENT = :awaiting_settlement
            PENDING = :pending
            COMPLETED = :completed
            CANCELED = :canceled
            REVERSED = :reversed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
