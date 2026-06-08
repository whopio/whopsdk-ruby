# typed: strong

module WhopSDK
  module Models
    class CardCreateDisputeParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardCreateDisputeParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The reason category for the dispute.
      sig { returns(WhopSDK::CardCreateDisputeParams::DisputeType::OrSymbol) }
      attr_accessor :dispute_type

      # The cardholder's written evidence for the dispute.
      sig { returns(String) }
      attr_accessor :text_evidence

      # The ID of the card transaction being disputed. Must belong to this card.
      sig { returns(String) }
      attr_accessor :transaction_id

      # Optional disputed amount in cents. Defaults to the full transaction amount. Must
      # not exceed the transaction amount.
      sig { returns(T.nilable(Integer)) }
      attr_reader :dispute_amount_cents

      sig { params(dispute_amount_cents: Integer).void }
      attr_writer :dispute_amount_cents

      sig do
        params(
          id: String,
          dispute_type: WhopSDK::CardCreateDisputeParams::DisputeType::OrSymbol,
          text_evidence: String,
          transaction_id: String,
          dispute_amount_cents: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The reason category for the dispute.
        dispute_type:,
        # The cardholder's written evidence for the dispute.
        text_evidence:,
        # The ID of the card transaction being disputed. Must belong to this card.
        transaction_id:,
        # Optional disputed amount in cents. Defaults to the full transaction amount. Must
        # not exceed the transaction amount.
        dispute_amount_cents: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            dispute_type:
              WhopSDK::CardCreateDisputeParams::DisputeType::OrSymbol,
            text_evidence: String,
            transaction_id: String,
            dispute_amount_cents: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The reason category for the dispute.
      module DisputeType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CardCreateDisputeParams::DisputeType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FRAUD =
          T.let(
            :fraud,
            WhopSDK::CardCreateDisputeParams::DisputeType::TaggedSymbol
          )
        CREDIT_NOT_PROCESSED =
          T.let(
            :credit_not_processed,
            WhopSDK::CardCreateDisputeParams::DisputeType::TaggedSymbol
          )
        SERVICE_NOT_RECEIVED =
          T.let(
            :service_not_received,
            WhopSDK::CardCreateDisputeParams::DisputeType::TaggedSymbol
          )
        MERCHANDISE_ISSUE =
          T.let(
            :merchandise_issue,
            WhopSDK::CardCreateDisputeParams::DisputeType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            WhopSDK::CardCreateDisputeParams::DisputeType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::CardCreateDisputeParams::DisputeType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
