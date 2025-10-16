# typed: strong

module WhopSDK
  module Models
    # Who can post on a chat feed
    module WhoCanPost
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WhoCanPost) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EVERYONE = T.let(:everyone, WhopSDK::WhoCanPost::TaggedSymbol)
      ADMINS = T.let(:admins, WhopSDK::WhoCanPost::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::WhoCanPost::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
