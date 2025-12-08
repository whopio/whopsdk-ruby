# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::FeeMarkups#create
    class FeeMarkupCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the fee markup.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When this fee markup was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute fee_type
      #   The type of fee this markup applies to.
      #
      #   @return [Symbol, WhopSDK::Models::FeeMarkupType]
      required :fee_type, enum: -> { WhopSDK::FeeMarkupType }

      # @!attribute fixed_fee_usd
      #   The fixed fee in USD to charge (0-50).
      #
      #   @return [Float, nil]
      required :fixed_fee_usd, Float, nil?: true

      # @!attribute notes
      #   Internal notes about this fee markup.
      #
      #   @return [String, nil]
      required :notes, String, nil?: true

      # @!attribute percentage_fee
      #   The percentage fee to charge (0-25).
      #
      #   @return [Float, nil]
      required :percentage_fee, Float, nil?: true

      # @!attribute updated_at
      #   When this fee markup was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, fee_type:, fixed_fee_usd:, notes:, percentage_fee:, updated_at:)
      #   Represents a fee markup configuration for a company
      #
      #   @param id [String] The unique identifier of the fee markup.
      #
      #   @param created_at [Time] When this fee markup was created.
      #
      #   @param fee_type [Symbol, WhopSDK::Models::FeeMarkupType] The type of fee this markup applies to.
      #
      #   @param fixed_fee_usd [Float, nil] The fixed fee in USD to charge (0-50).
      #
      #   @param notes [String, nil] Internal notes about this fee markup.
      #
      #   @param percentage_fee [Float, nil] The percentage fee to charge (0-25).
      #
      #   @param updated_at [Time] When this fee markup was last updated.
    end
  end
end
