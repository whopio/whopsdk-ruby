# typed: strong

module WhopSDK
  module Models
    class CardDispute < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::CardDispute, WhopSDK::Internal::AnyHash) }

      # The card dispute ID.
      sig { returns(String) }
      attr_accessor :id

      # The number of evidence files attached to the dispute.
      sig { returns(Integer) }
      attr_accessor :attachment_count

      # ISO 8601 timestamp of when the dispute was created.
      sig { returns(String) }
      attr_accessor :created_at

      # The ISO 4217 currency code for the disputed amount.
      sig { returns(String) }
      attr_accessor :currency

      # The disputed amount in the smallest currency unit (cents).
      sig { returns(Integer) }
      attr_accessor :dispute_amount_cents

      # The reason category for the dispute.
      sig { returns(WhopSDK::CardDispute::DisputeType::TaggedSymbol) }
      attr_accessor :dispute_type

      # Whether evidence files have been attached to the dispute.
      sig { returns(T::Boolean) }
      attr_accessor :has_file_evidence

      sig { returns(WhopSDK::CardDispute::Object::TaggedSymbol) }
      attr_accessor :object

      # The dispute lifecycle status.
      sig { returns(WhopSDK::CardDispute::Status::TaggedSymbol) }
      attr_accessor :status

      # ISO 8601 timestamp of when the provider resolved the dispute. Null if
      # unresolved.
      sig { returns(T.nilable(String)) }
      attr_accessor :resolved_at

      # The cardholder's written evidence for the dispute.
      sig { returns(T.nilable(String)) }
      attr_reader :text_evidence

      sig { params(text_evidence: String).void }
      attr_writer :text_evidence

      # The ID of the card transaction the dispute was filed against.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig do
        params(
          id: String,
          attachment_count: Integer,
          created_at: String,
          currency: String,
          dispute_amount_cents: Integer,
          dispute_type: WhopSDK::CardDispute::DisputeType::OrSymbol,
          has_file_evidence: T::Boolean,
          object: WhopSDK::CardDispute::Object::OrSymbol,
          status: WhopSDK::CardDispute::Status::OrSymbol,
          resolved_at: T.nilable(String),
          text_evidence: String,
          transaction_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The card dispute ID.
        id:,
        # The number of evidence files attached to the dispute.
        attachment_count:,
        # ISO 8601 timestamp of when the dispute was created.
        created_at:,
        # The ISO 4217 currency code for the disputed amount.
        currency:,
        # The disputed amount in the smallest currency unit (cents).
        dispute_amount_cents:,
        # The reason category for the dispute.
        dispute_type:,
        # Whether evidence files have been attached to the dispute.
        has_file_evidence:,
        object:,
        # The dispute lifecycle status.
        status:,
        # ISO 8601 timestamp of when the provider resolved the dispute. Null if
        # unresolved.
        resolved_at: nil,
        # The cardholder's written evidence for the dispute.
        text_evidence: nil,
        # The ID of the card transaction the dispute was filed against.
        transaction_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            attachment_count: Integer,
            created_at: String,
            currency: String,
            dispute_amount_cents: Integer,
            dispute_type: WhopSDK::CardDispute::DisputeType::TaggedSymbol,
            has_file_evidence: T::Boolean,
            object: WhopSDK::CardDispute::Object::TaggedSymbol,
            status: WhopSDK::CardDispute::Status::TaggedSymbol,
            resolved_at: T.nilable(String),
            text_evidence: String,
            transaction_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The reason category for the dispute.
      module DisputeType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardDispute::DisputeType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FRAUD = T.let(:fraud, WhopSDK::CardDispute::DisputeType::TaggedSymbol)
        CREDIT_NOT_PROCESSED =
          T.let(
            :credit_not_processed,
            WhopSDK::CardDispute::DisputeType::TaggedSymbol
          )
        SERVICE_NOT_RECEIVED =
          T.let(
            :service_not_received,
            WhopSDK::CardDispute::DisputeType::TaggedSymbol
          )
        MERCHANDISE_ISSUE =
          T.let(
            :merchandise_issue,
            WhopSDK::CardDispute::DisputeType::TaggedSymbol
          )
        OTHER = T.let(:other, WhopSDK::CardDispute::DisputeType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::CardDispute::DisputeType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardDispute::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_DISPUTE =
          T.let(:card_dispute, WhopSDK::CardDispute::Object::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::CardDispute::Object::TaggedSymbol])
        end
        def self.values
        end
      end

      # The dispute lifecycle status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardDispute::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, WhopSDK::CardDispute::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, WhopSDK::CardDispute::Status::TaggedSymbol)
        ACCEPTED = T.let(:accepted, WhopSDK::CardDispute::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, WhopSDK::CardDispute::Status::TaggedSymbol)
        CANCELED = T.let(:canceled, WhopSDK::CardDispute::Status::TaggedSymbol)
        RESOLVED_BY_MERCHANT =
          T.let(
            :resolved_by_merchant,
            WhopSDK::CardDispute::Status::TaggedSymbol
          )

        sig do
          override.returns(T::Array[WhopSDK::CardDispute::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
