# typed: strong

module WhopSDK
  module Models
    # The status of a membership
    module MembershipStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::MembershipStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRIALING = T.let(:trialing, WhopSDK::MembershipStatus::TaggedSymbol)
      ACTIVE = T.let(:active, WhopSDK::MembershipStatus::TaggedSymbol)
      PAST_DUE = T.let(:past_due, WhopSDK::MembershipStatus::TaggedSymbol)
      COMPLETED = T.let(:completed, WhopSDK::MembershipStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, WhopSDK::MembershipStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, WhopSDK::MembershipStatus::TaggedSymbol)
      UNRESOLVED = T.let(:unresolved, WhopSDK::MembershipStatus::TaggedSymbol)
      DRAFTED = T.let(:drafted, WhopSDK::MembershipStatus::TaggedSymbol)
      CANCELING = T.let(:canceling, WhopSDK::MembershipStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::MembershipStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
