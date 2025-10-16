# typed: strong

module WhopSDK
  module Models
    # The different most recent actions a member can have.
    module MemberMostRecentActions
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::MemberMostRecentActions) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CANCELING =
        T.let(:canceling, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      CHURNED = T.let(:churned, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      FINISHED_SPLIT_PAY =
        T.let(
          :finished_split_pay,
          WhopSDK::MemberMostRecentActions::TaggedSymbol
        )
      PAUSED = T.let(:paused, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      PAID_SUBSCRIBER =
        T.let(:paid_subscriber, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      PAID_ONCE =
        T.let(:paid_once, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      EXPIRING =
        T.let(:expiring, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      JOINED = T.let(:joined, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      DRAFTED = T.let(:drafted, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      LEFT = T.let(:left, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      TRIALING =
        T.let(:trialing, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      PENDING_ENTRY =
        T.let(:pending_entry, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      RENEWING =
        T.let(:renewing, WhopSDK::MemberMostRecentActions::TaggedSymbol)
      PAST_DUE =
        T.let(:past_due, WhopSDK::MemberMostRecentActions::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::MemberMostRecentActions::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
