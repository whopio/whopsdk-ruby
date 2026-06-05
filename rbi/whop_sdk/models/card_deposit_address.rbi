# typed: strong

module WhopSDK
  module Models
    class CardDepositAddress < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardDepositAddress, WhopSDK::Internal::AnyHash)
        end

      # The on-chain deposit address used to fund the card account.
      sig { returns(String) }
      attr_accessor :address

      sig { returns(WhopSDK::CardDepositAddress::Object::TaggedSymbol) }
      attr_accessor :object

      sig do
        params(
          address: String,
          object: WhopSDK::CardDepositAddress::Object::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The on-chain deposit address used to fund the card account.
        address:,
        object:
      )
      end

      sig do
        override.returns(
          {
            address: String,
            object: WhopSDK::CardDepositAddress::Object::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardDepositAddress::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_DEPOSIT_ADDRESS =
          T.let(
            :card_deposit_address,
            WhopSDK::CardDepositAddress::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::CardDepositAddress::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
