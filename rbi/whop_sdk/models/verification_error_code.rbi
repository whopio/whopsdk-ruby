# typed: strong

module WhopSDK
  module Models
    # An error code for a verification attempt.
    module VerificationErrorCode
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::VerificationErrorCode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ABANDONED =
        T.let(:abandoned, WhopSDK::VerificationErrorCode::TaggedSymbol)
      CONSENT_DECLINED =
        T.let(:consent_declined, WhopSDK::VerificationErrorCode::TaggedSymbol)
      COUNTRY_NOT_SUPPORTED =
        T.let(
          :country_not_supported,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      DEVICE_NOT_SUPPORTED =
        T.let(
          :device_not_supported,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      DOCUMENT_EXPIRED =
        T.let(:document_expired, WhopSDK::VerificationErrorCode::TaggedSymbol)
      DOCUMENT_TYPE_NOT_SUPPORTED =
        T.let(
          :document_type_not_supported,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      DOCUMENT_UNVERIFIED_OTHER =
        T.let(
          :document_unverified_other,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      EMAIL_UNVERIFIED_OTHER =
        T.let(
          :email_unverified_other,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      EMAIL_VERIFICATION_DECLINED =
        T.let(
          :email_verification_declined,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      ID_NUMBER_INSUFFICIENT_DOCUMENT_DATA =
        T.let(
          :id_number_insufficient_document_data,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      ID_NUMBER_MISMATCH =
        T.let(:id_number_mismatch, WhopSDK::VerificationErrorCode::TaggedSymbol)
      ID_NUMBER_UNVERIFIED_OTHER =
        T.let(
          :id_number_unverified_other,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      PHONE_UNVERIFIED_OTHER =
        T.let(
          :phone_unverified_other,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      PHONE_VERIFICATION_DECLINED =
        T.let(
          :phone_verification_declined,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      SELFIE_DOCUMENT_MISSING_PHOTO =
        T.let(
          :selfie_document_missing_photo,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      SELFIE_FACE_MISMATCH =
        T.let(
          :selfie_face_mismatch,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      SELFIE_MANIPULATED =
        T.let(:selfie_manipulated, WhopSDK::VerificationErrorCode::TaggedSymbol)
      SELFIE_UNVERIFIED_OTHER =
        T.let(
          :selfie_unverified_other,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )
      UNDER_SUPPORTED_AGE =
        T.let(
          :under_supported_age,
          WhopSDK::VerificationErrorCode::TaggedSymbol
        )

      sig do
        override.returns(T::Array[WhopSDK::VerificationErrorCode::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
