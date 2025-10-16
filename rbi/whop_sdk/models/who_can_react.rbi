# typed: strong

module WhopSDK
  module Models
    # Who can react on a chat feed
    module WhoCanReact
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WhoCanReact) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EVERYONE = T.let(:everyone, WhopSDK::WhoCanReact::TaggedSymbol)
      NO_ONE = T.let(:no_one, WhopSDK::WhoCanReact::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::WhoCanReact::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
