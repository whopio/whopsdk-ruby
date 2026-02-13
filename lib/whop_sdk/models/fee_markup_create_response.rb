# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::FeeMarkups#create
    class FeeMarkupCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the fee markup.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The datetime the fee markup was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute fee_type
      #   The category of fee this markup applies to.
      #
      #   @return [Symbol, WhopSDK::Models::FeeMarkupType]
      required :fee_type, enum: -> { WhopSDK::FeeMarkupType }

      # @!attribute fixed_fee_usd
      #   A flat fee charged per transaction, in USD. Ranges from 0 to 50. Null if no
      #   fixed fee is configured.
      #
      #   @return [Float, nil]
      required :fixed_fee_usd, Float, nil?: true

      # @!attribute notes
      #   Internal notes about this fee markup, visible only to administrators. Null if no
      #   notes have been added.
      #
      #   @return [String, nil]
      required :notes, String, nil?: true

      # @!attribute percentage_fee
      #   A percentage-based fee charged per transaction. Ranges from 0 to 25. Null if no
      #   percentage fee is configured.
      #
      #   @return [Float, nil]
      required :percentage_fee, Float, nil?: true

      # @!attribute updated_at
      #   The datetime the fee markup was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, fee_type:, fixed_fee_usd:, notes:, percentage_fee:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::FeeMarkupCreateResponse} for more details.
      #
      #   A fee markup configuration that defines additional charges applied to
      #   transactions for a platform's connected accounts.
      #
      #   @param id [String] The unique identifier for the fee markup.
      #
      #   @param created_at [Time] The datetime the fee markup was created.
      #
      #   @param fee_type [Symbol, WhopSDK::Models::FeeMarkupType] The category of fee this markup applies to.
      #
      #   @param fixed_fee_usd [Float, nil] A flat fee charged per transaction, in USD. Ranges from 0 to 50. Null if no fixe
      #
      #   @param notes [String, nil] Internal notes about this fee markup, visible only to administrators. Null if no
      #
      #   @param percentage_fee [Float, nil] A percentage-based fee charged per transaction. Ranges from 0 to 25. Null if no
      #
      #   @param updated_at [Time] The datetime the fee markup was last updated.
    end
  end
end
