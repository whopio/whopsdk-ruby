# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Stats#list
    class StatListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #   The available metrics.
      #
      #   @return [Array<WhopSDK::Models::StatListResponse::Data>]
      required :data, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatListResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<WhopSDK::Models::StatListResponse::Data>] The available metrics.

      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute description
        #   A short description of what the metric measures.
        #
        #   @return [String]
        required :description, String

        # @!attribute key
        #   The metric's key. Pass it to GET /stats/{metric} to query its values.
        #
        #   @return [String]
        required :key, String

        # @!attribute name
        #   Human-readable display name for the metric.
        #
        #   @return [String]
        required :name, String

        # @!attribute properties
        #   The properties you can use with this metric — pass one as a filter
        #   (property=value) to narrow the series, or as breakdown_by=property to split it.
        #
        #   @return [Array<String>]
        required :properties, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute unit
        #   How to read the metric's values: count is an integer, currency is a decimal
        #   amount, and percent is a number where 1.6 means 1.6%.
        #
        #   @return [Symbol, WhopSDK::Models::StatListResponse::Data::Unit]
        required :unit, enum: -> { WhopSDK::Models::StatListResponse::Data::Unit }

        # @!attribute windows
        #   Snapshot metrics only: the trailing windows you can pass as snapshot_window, for
        #   example 30d. Absent on live metrics, which use from/to instead.
        #
        #   @return [Array<String>, nil]
        optional :windows, WhopSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(description:, key:, name:, properties:, unit:, windows: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::StatListResponse::Data} for more details.
        #
        #   @param description [String] A short description of what the metric measures.
        #
        #   @param key [String] The metric's key. Pass it to GET /stats/{metric} to query its values.
        #
        #   @param name [String] Human-readable display name for the metric.
        #
        #   @param properties [Array<String>] The properties you can use with this metric — pass one as a filter (property=val
        #
        #   @param unit [Symbol, WhopSDK::Models::StatListResponse::Data::Unit] How to read the metric's values: count is an integer, currency is a decimal amou
        #
        #   @param windows [Array<String>] Snapshot metrics only: the trailing windows you can pass as snapshot_window, for

        # How to read the metric's values: count is an integer, currency is a decimal
        # amount, and percent is a number where 1.6 means 1.6%.
        #
        # @see WhopSDK::Models::StatListResponse::Data#unit
        module Unit
          extend WhopSDK::Internal::Type::Enum

          COUNT = :count
          CURRENCY = :currency
          PERCENT = :percent

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
