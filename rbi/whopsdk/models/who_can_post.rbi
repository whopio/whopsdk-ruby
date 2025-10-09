# typed: strong

module Whopsdk
  module Models
    # Who can post on a chat feed
    module WhoCanPost
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::WhoCanPost) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EVERYONE = T.let(:everyone, Whopsdk::WhoCanPost::TaggedSymbol)
      ADMINS = T.let(:admins, Whopsdk::WhoCanPost::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::WhoCanPost::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
