# typed: strong

module WhopSDK
  module Models
    class CardSecrets < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::CardSecrets, WhopSDK::Internal::AnyHash) }

      # The card CVC/CVV.
      sig { returns(String) }
      attr_accessor :cvc

      sig { returns(WhopSDK::CardSecrets::Object::TaggedSymbol) }
      attr_accessor :object

      # The full card number (PAN).
      sig { returns(String) }
      attr_accessor :pan

      # The cardholder name from the card provider.
      sig { returns(T.nilable(String)) }
      attr_accessor :name_on_card

      sig do
        params(
          cvc: String,
          object: WhopSDK::CardSecrets::Object::OrSymbol,
          pan: String,
          name_on_card: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The card CVC/CVV.
        cvc:,
        object:,
        # The full card number (PAN).
        pan:,
        # The cardholder name from the card provider.
        name_on_card: nil
      )
      end

      sig do
        override.returns(
          {
            cvc: String,
            object: WhopSDK::CardSecrets::Object::TaggedSymbol,
            pan: String,
            name_on_card: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardSecrets::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_SECRETS =
          T.let(:card_secrets, WhopSDK::CardSecrets::Object::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::CardSecrets::Object::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
