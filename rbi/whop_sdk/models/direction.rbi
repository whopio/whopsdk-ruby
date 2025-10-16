# typed: strong

module WhopSDK
  module Models
    # The direction of the sort.
    module Direction
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Direction) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ASC = T.let(:asc, WhopSDK::Direction::TaggedSymbol)
      DESC = T.let(:desc, WhopSDK::Direction::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::Direction::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
