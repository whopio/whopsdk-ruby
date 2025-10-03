# typed: strong

module Whopsdk
  module Models
    # The methods of how a plan can be released (including raffles and waitlists).
    module ReleaseMethod
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::ReleaseMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BUY_NOW = T.let(:buy_now, Whopsdk::ReleaseMethod::TaggedSymbol)
      WAITLIST = T.let(:waitlist, Whopsdk::ReleaseMethod::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::ReleaseMethod::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
