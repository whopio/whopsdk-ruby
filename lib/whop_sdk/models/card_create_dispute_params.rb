# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#create_dispute
    class CardCreateDisputeParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute dispute_type
      #   The reason category for the dispute.
      #
      #   @return [Symbol, WhopSDK::Models::CardCreateDisputeParams::DisputeType]
      required :dispute_type, enum: -> { WhopSDK::CardCreateDisputeParams::DisputeType }

      # @!attribute text_evidence
      #   The cardholder's written evidence for the dispute.
      #
      #   @return [String]
      required :text_evidence, String

      # @!attribute transaction_id
      #   The ID of the card transaction being disputed. Must belong to this card.
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute dispute_amount_cents
      #   Optional disputed amount in cents. Defaults to the full transaction amount. Must
      #   not exceed the transaction amount.
      #
      #   @return [Integer, nil]
      optional :dispute_amount_cents, Integer

      # @!method initialize(id:, dispute_type:, text_evidence:, transaction_id:, dispute_amount_cents: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardCreateDisputeParams} for more details.
      #
      #   @param id [String]
      #
      #   @param dispute_type [Symbol, WhopSDK::Models::CardCreateDisputeParams::DisputeType] The reason category for the dispute.
      #
      #   @param text_evidence [String] The cardholder's written evidence for the dispute.
      #
      #   @param transaction_id [String] The ID of the card transaction being disputed. Must belong to this card.
      #
      #   @param dispute_amount_cents [Integer] Optional disputed amount in cents. Defaults to the full transaction amount. Must
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The reason category for the dispute.
      module DisputeType
        extend WhopSDK::Internal::Type::Enum

        FRAUD = :fraud
        CREDIT_NOT_PROCESSED = :credit_not_processed
        SERVICE_NOT_RECEIVED = :service_not_received
        MERCHANDISE_ISSUE = :merchandise_issue
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
