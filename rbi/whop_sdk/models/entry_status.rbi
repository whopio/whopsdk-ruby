# typed: strong

module WhopSDK
  module Models
    # The status of an entry to a waitlist.
    module EntryStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::EntryStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFTED = T.let(:drafted, WhopSDK::EntryStatus::TaggedSymbol)
      PENDING = T.let(:pending, WhopSDK::EntryStatus::TaggedSymbol)
      APPROVED = T.let(:approved, WhopSDK::EntryStatus::TaggedSymbol)
      DENIED = T.let(:denied, WhopSDK::EntryStatus::TaggedSymbol)
      ANY = T.let(:any, WhopSDK::EntryStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::EntryStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
