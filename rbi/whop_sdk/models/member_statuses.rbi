# typed: strong

module WhopSDK
  module Models
    # The different statuses a Member can have.
    module MemberStatuses
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::MemberStatuses) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFTED = T.let(:drafted, WhopSDK::MemberStatuses::TaggedSymbol)
      JOINED = T.let(:joined, WhopSDK::MemberStatuses::TaggedSymbol)
      LEFT = T.let(:left, WhopSDK::MemberStatuses::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::MemberStatuses::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
