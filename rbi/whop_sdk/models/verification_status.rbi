# typed: strong

module WhopSDK
  module Models
    # A status for a verification.
    module VerificationStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::VerificationStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REQUIRES_INPUT =
        T.let(:requires_input, WhopSDK::VerificationStatus::TaggedSymbol)
      PROCESSING = T.let(:processing, WhopSDK::VerificationStatus::TaggedSymbol)
      VERIFIED = T.let(:verified, WhopSDK::VerificationStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, WhopSDK::VerificationStatus::TaggedSymbol)
      CREATED = T.let(:created, WhopSDK::VerificationStatus::TaggedSymbol)
      STARTED = T.let(:started, WhopSDK::VerificationStatus::TaggedSymbol)
      SUBMITTED = T.let(:submitted, WhopSDK::VerificationStatus::TaggedSymbol)
      APPROVED = T.let(:approved, WhopSDK::VerificationStatus::TaggedSymbol)
      DECLINED = T.let(:declined, WhopSDK::VerificationStatus::TaggedSymbol)
      RESUBMISSION_REQUESTED =
        T.let(
          :resubmission_requested,
          WhopSDK::VerificationStatus::TaggedSymbol
        )
      EXPIRED = T.let(:expired, WhopSDK::VerificationStatus::TaggedSymbol)
      ABANDONED = T.let(:abandoned, WhopSDK::VerificationStatus::TaggedSymbol)
      REVIEW = T.let(:review, WhopSDK::VerificationStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::VerificationStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
