# typed: strong

module WhopSDK
  module Models
    class CardPin < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::CardPin, WhopSDK::Internal::AnyHash) }

      sig { returns(WhopSDK::CardPin::Object::TaggedSymbol) }
      attr_accessor :object

      # The card PIN.
      sig { returns(String) }
      attr_accessor :pin

      sig do
        params(object: WhopSDK::CardPin::Object::OrSymbol, pin: String).returns(
          T.attached_class
        )
      end
      def self.new(
        object:,
        # The card PIN.
        pin:
      )
      end

      sig do
        override.returns(
          { object: WhopSDK::CardPin::Object::TaggedSymbol, pin: String }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CardPin::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_PIN = T.let(:card_pin, WhopSDK::CardPin::Object::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::CardPin::Object::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
