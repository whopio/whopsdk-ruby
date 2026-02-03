# typed: strong

module WhopSDK
  module Models
    # The statuses of a DMs feed member
    module DmFeedMemberStatuses
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::DmFeedMemberStatuses) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REQUESTED = T.let(:requested, WhopSDK::DmFeedMemberStatuses::TaggedSymbol)
      ACCEPTED = T.let(:accepted, WhopSDK::DmFeedMemberStatuses::TaggedSymbol)
      HIDDEN = T.let(:hidden, WhopSDK::DmFeedMemberStatuses::TaggedSymbol)
      CLOSED = T.let(:closed, WhopSDK::DmFeedMemberStatuses::TaggedSymbol)
      ARCHIVED = T.let(:archived, WhopSDK::DmFeedMemberStatuses::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::DmFeedMemberStatuses::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
