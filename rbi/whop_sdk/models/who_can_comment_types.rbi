# typed: strong

module WhopSDK
  module Models
    # Who can comment on a forum feed
    module WhoCanCommentTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WhoCanCommentTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EVERYONE = T.let(:everyone, WhopSDK::WhoCanCommentTypes::TaggedSymbol)
      ADMINS = T.let(:admins, WhopSDK::WhoCanCommentTypes::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::WhoCanCommentTypes::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
