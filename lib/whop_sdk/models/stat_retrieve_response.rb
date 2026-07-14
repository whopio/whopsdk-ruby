# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Stats#retrieve
    class StatRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [WhopSDK::Models::StatRetrieveResponse::Data]
      required :data, -> { WhopSDK::Models::StatRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [WhopSDK::Models::StatRetrieveResponse::Data]

      # @see WhopSDK::Models::StatRetrieveResponse#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute points
        #   One entry per period, oldest first.
        #
        #   @return [Array<WhopSDK::Models::StatRetrieveResponse::Data::Point>]
        required :points,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatRetrieveResponse::Data::Point] }

        # @!attribute currency
        #   ISO currency the values are denominated in. Present for currency-unit metrics:
        #   the convert_to currency, or usd.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!method initialize(points:, currency: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::StatRetrieveResponse::Data} for more details.
        #
        #   @param points [Array<WhopSDK::Models::StatRetrieveResponse::Data::Point>] One entry per period, oldest first.
        #
        #   @param currency [String, nil] ISO currency the values are denominated in. Present for currency-unit metrics: t

        class Point < WhopSDK::Internal::Type::BaseModel
          # @!attribute timestamp
          #   Unix timestamp (seconds) of the period start.
          #
          #   @return [Integer]
          required :timestamp, Integer

          # @!attribute value
          #   The metric's value for this period, in the metric's unit.
          #
          #   @return [Float, nil]
          required :value, Float, nil?: true

          # @!attribute breakdown
          #   Present only when broken down: one entry per property value in this period.
          #
          #   @return [Array<WhopSDK::Models::StatRetrieveResponse::Data::Point::Breakdown>, nil]
          optional :breakdown,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatRetrieveResponse::Data::Point::Breakdown] }

          # @!method initialize(timestamp:, value:, breakdown: nil)
          #   @param timestamp [Integer] Unix timestamp (seconds) of the period start.
          #
          #   @param value [Float, nil] The metric's value for this period, in the metric's unit.
          #
          #   @param breakdown [Array<WhopSDK::Models::StatRetrieveResponse::Data::Point::Breakdown>] Present only when broken down: one entry per property value in this period.

          class Breakdown < WhopSDK::Internal::Type::BaseModel
            # @!attribute name
            #   The property value, for example usd or visa.
            #
            #   @return [String]
            required :name, String

            # @!attribute value
            #   The metric's value for this entry.
            #
            #   @return [Float, nil]
            required :value, Float, nil?: true

            # @!method initialize(name:, value:)
            #   @param name [String] The property value, for example usd or visa.
            #
            #   @param value [Float, nil] The metric's value for this entry.
          end
        end
      end
    end
  end
end
