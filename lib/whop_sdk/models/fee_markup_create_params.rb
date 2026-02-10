# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::FeeMarkups#create
    class FeeMarkupCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to create or update the fee markup for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute fee_type
      #   The type of fee this markup applies to, such as processing or platform fees.
      #
      #   @return [Symbol, WhopSDK::Models::FeeMarkupType]
      required :fee_type, enum: -> { WhopSDK::FeeMarkupType }

      # @!attribute fixed_fee_usd
      #   The fixed fee amount in USD to charge per transaction. Must be between 0 and 50.
      #
      #   @return [Float, nil]
      optional :fixed_fee_usd, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value metadata to attach to this fee markup.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute notes
      #   Internal notes about this fee markup for record-keeping purposes.
      #
      #   @return [String, nil]
      optional :notes, String, nil?: true

      # @!attribute percentage_fee
      #   The percentage fee to charge per transaction. Must be between 0 and 25.
      #
      #   @return [Float, nil]
      optional :percentage_fee, Float, nil?: true

      # @!method initialize(company_id:, fee_type:, fixed_fee_usd: nil, metadata: nil, notes: nil, percentage_fee: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::FeeMarkupCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to create or update the fee markup for.
      #
      #   @param fee_type [Symbol, WhopSDK::Models::FeeMarkupType] The type of fee this markup applies to, such as processing or platform fees.
      #
      #   @param fixed_fee_usd [Float, nil] The fixed fee amount in USD to charge per transaction. Must be between 0 and 50.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value metadata to attach to this fee markup.
      #
      #   @param notes [String, nil] Internal notes about this fee markup for record-keeping purposes.
      #
      #   @param percentage_fee [Float, nil] The percentage fee to charge per transaction. Must be between 0 and 25.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
