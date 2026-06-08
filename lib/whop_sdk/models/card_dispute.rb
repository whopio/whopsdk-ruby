# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#create_dispute
    class CardDispute < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The card dispute ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute attachment_count
      #   The number of evidence files attached to the dispute.
      #
      #   @return [Integer]
      required :attachment_count, Integer

      # @!attribute created_at
      #   ISO 8601 timestamp of when the dispute was created.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   The ISO 4217 currency code for the disputed amount.
      #
      #   @return [String]
      required :currency, String

      # @!attribute dispute_amount_cents
      #   The disputed amount in the smallest currency unit (cents).
      #
      #   @return [Integer]
      required :dispute_amount_cents, Integer

      # @!attribute dispute_type
      #   The reason category for the dispute.
      #
      #   @return [Symbol, WhopSDK::Models::CardDispute::DisputeType]
      required :dispute_type, enum: -> { WhopSDK::CardDispute::DisputeType }

      # @!attribute has_file_evidence
      #   Whether evidence files have been attached to the dispute.
      #
      #   @return [Boolean]
      required :has_file_evidence, WhopSDK::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardDispute::Object]
      required :object, enum: -> { WhopSDK::CardDispute::Object }

      # @!attribute status
      #   The dispute lifecycle status.
      #
      #   @return [Symbol, WhopSDK::Models::CardDispute::Status]
      required :status, enum: -> { WhopSDK::CardDispute::Status }

      # @!attribute resolved_at
      #   ISO 8601 timestamp of when the provider resolved the dispute. Null if
      #   unresolved.
      #
      #   @return [String, nil]
      optional :resolved_at, String, nil?: true

      # @!attribute text_evidence
      #   The cardholder's written evidence for the dispute.
      #
      #   @return [String, nil]
      optional :text_evidence, String

      # @!attribute transaction_id
      #   The ID of the card transaction the dispute was filed against.
      #
      #   @return [String, nil]
      optional :transaction_id, String, nil?: true

      # @!method initialize(id:, attachment_count:, created_at:, currency:, dispute_amount_cents:, dispute_type:, has_file_evidence:, object:, status:, resolved_at: nil, text_evidence: nil, transaction_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardDispute} for more details.
      #
      #   @param id [String] The card dispute ID.
      #
      #   @param attachment_count [Integer] The number of evidence files attached to the dispute.
      #
      #   @param created_at [String] ISO 8601 timestamp of when the dispute was created.
      #
      #   @param currency [String] The ISO 4217 currency code for the disputed amount.
      #
      #   @param dispute_amount_cents [Integer] The disputed amount in the smallest currency unit (cents).
      #
      #   @param dispute_type [Symbol, WhopSDK::Models::CardDispute::DisputeType] The reason category for the dispute.
      #
      #   @param has_file_evidence [Boolean] Whether evidence files have been attached to the dispute.
      #
      #   @param object [Symbol, WhopSDK::Models::CardDispute::Object]
      #
      #   @param status [Symbol, WhopSDK::Models::CardDispute::Status] The dispute lifecycle status.
      #
      #   @param resolved_at [String, nil] ISO 8601 timestamp of when the provider resolved the dispute. Null if unresolved
      #
      #   @param text_evidence [String] The cardholder's written evidence for the dispute.
      #
      #   @param transaction_id [String, nil] The ID of the card transaction the dispute was filed against.

      # The reason category for the dispute.
      #
      # @see WhopSDK::Models::CardDispute#dispute_type
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

      # @see WhopSDK::Models::CardDispute#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD_DISPUTE = :card_dispute

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The dispute lifecycle status.
      #
      # @see WhopSDK::Models::CardDispute#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        IN_REVIEW = :in_review
        ACCEPTED = :accepted
        REJECTED = :rejected
        CANCELED = :canceled
        RESOLVED_BY_MERCHANT = :resolved_by_merchant

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
