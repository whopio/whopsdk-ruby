# typed: strong

module Whopsdk
  module Models
    # The status of an entry to a waitlist or raffle.
    module EntryStatus
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::EntryStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFTED = T.let(:drafted, Whopsdk::EntryStatus::TaggedSymbol)
      PENDING = T.let(:pending, Whopsdk::EntryStatus::TaggedSymbol)
      APPROVED = T.let(:approved, Whopsdk::EntryStatus::TaggedSymbol)
      DENIED = T.let(:denied, Whopsdk::EntryStatus::TaggedSymbol)
      ANY = T.let(:any, Whopsdk::EntryStatus::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::EntryStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
