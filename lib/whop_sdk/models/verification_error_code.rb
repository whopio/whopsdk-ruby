# frozen_string_literal: true

module WhopSDK
  module Models
    # An error code for a verification attempt.
    module VerificationErrorCode
      extend WhopSDK::Internal::Type::Enum

      ABANDONED = :abandoned
      CONSENT_DECLINED = :consent_declined
      COUNTRY_NOT_SUPPORTED = :country_not_supported
      DEVICE_NOT_SUPPORTED = :device_not_supported
      DOCUMENT_EXPIRED = :document_expired
      DOCUMENT_TYPE_NOT_SUPPORTED = :document_type_not_supported
      DOCUMENT_UNVERIFIED_OTHER = :document_unverified_other
      EMAIL_UNVERIFIED_OTHER = :email_unverified_other
      EMAIL_VERIFICATION_DECLINED = :email_verification_declined
      ID_NUMBER_INSUFFICIENT_DOCUMENT_DATA = :id_number_insufficient_document_data
      ID_NUMBER_MISMATCH = :id_number_mismatch
      ID_NUMBER_UNVERIFIED_OTHER = :id_number_unverified_other
      PHONE_UNVERIFIED_OTHER = :phone_unverified_other
      PHONE_VERIFICATION_DECLINED = :phone_verification_declined
      SELFIE_DOCUMENT_MISSING_PHOTO = :selfie_document_missing_photo
      SELFIE_FACE_MISMATCH = :selfie_face_mismatch
      SELFIE_MANIPULATED = :selfie_manipulated
      SELFIE_UNVERIFIED_OTHER = :selfie_unverified_other
      UNDER_SUPPORTED_AGE = :under_supported_age

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
