# typed: strong

module WhopSDK
  module Models
    # The types of post
    module DmsPostTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::DmsPostTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REGULAR = T.let(:regular, WhopSDK::DmsPostTypes::TaggedSymbol)
      SYSTEM = T.let(:system, WhopSDK::DmsPostTypes::TaggedSymbol)
      AUTOMATED = T.let(:automated, WhopSDK::DmsPostTypes::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::DmsPostTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
