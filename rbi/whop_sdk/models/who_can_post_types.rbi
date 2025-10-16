# typed: strong

module WhopSDK
  module Models
    # Who can post on a forum feed
    module WhoCanPostTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WhoCanPostTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EVERYONE = T.let(:everyone, WhopSDK::WhoCanPostTypes::TaggedSymbol)
      ADMINS = T.let(:admins, WhopSDK::WhoCanPostTypes::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::WhoCanPostTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
