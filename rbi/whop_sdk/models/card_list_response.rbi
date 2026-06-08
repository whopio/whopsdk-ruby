# typed: strong

module WhopSDK
  module Models
    class CardListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::CardListResponse, WhopSDK::Internal::AnyHash)
        end

      sig { returns(T::Array[WhopSDK::Card]) }
      attr_accessor :cards

      sig do
        params(cards: T::Array[WhopSDK::Card::OrHash]).returns(T.attached_class)
      end
      def self.new(cards:)
      end

      sig { override.returns({ cards: T::Array[WhopSDK::Card] }) }
      def to_hash
      end
    end
  end
end
