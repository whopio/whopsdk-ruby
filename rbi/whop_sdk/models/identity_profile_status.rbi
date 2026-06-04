# typed: strong

module WhopSDK
  module Models
    # Derived verification status for an identity profile.
    module IdentityProfileStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::IdentityProfileStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NOT_STARTED =
        T.let(:not_started, WhopSDK::IdentityProfileStatus::TaggedSymbol)
      PENDING = T.let(:pending, WhopSDK::IdentityProfileStatus::TaggedSymbol)
      APPROVED = T.let(:approved, WhopSDK::IdentityProfileStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, WhopSDK::IdentityProfileStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::IdentityProfileStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
