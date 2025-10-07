# typed: strong

module Whopsdk
  module Models
    # The status of a membership
    module MembershipStatus
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::MembershipStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRIALING = T.let(:trialing, Whopsdk::MembershipStatus::TaggedSymbol)
      ACTIVE = T.let(:active, Whopsdk::MembershipStatus::TaggedSymbol)
      PAST_DUE = T.let(:past_due, Whopsdk::MembershipStatus::TaggedSymbol)
      COMPLETED = T.let(:completed, Whopsdk::MembershipStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, Whopsdk::MembershipStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, Whopsdk::MembershipStatus::TaggedSymbol)
      UNRESOLVED = T.let(:unresolved, Whopsdk::MembershipStatus::TaggedSymbol)
      DRAFTED = T.let(:drafted, Whopsdk::MembershipStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::MembershipStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
