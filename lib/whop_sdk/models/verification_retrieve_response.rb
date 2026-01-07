# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#retrieve
    class VerificationRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique identifier for the verification.
      #
      #   @return [String]
      required :id, String

      # @!attribute last_error_code
      #   An error code for a verification attempt.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode, nil]
      required :last_error_code,
               enum: -> { WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode },
               nil?: true

      # @!attribute last_error_reason
      #   The last error reason that occurred during the verification.
      #
      #   @return [String, nil]
      required :last_error_reason, String, nil?: true

      # @!attribute status
      #   The status of the verification.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::Status]
      required :status, enum: -> { WhopSDK::Models::VerificationRetrieveResponse::Status }

      # @!method initialize(id:, last_error_code:, last_error_reason:, status:)
      #   An object representing an identity verification session
      #
      #   @param id [String] A unique identifier for the verification.
      #
      #   @param last_error_code [Symbol, WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode, nil] An error code for a verification attempt.
      #
      #   @param last_error_reason [String, nil] The last error reason that occurred during the verification.
      #
      #   @param status [Symbol, WhopSDK::Models::VerificationRetrieveResponse::Status] The status of the verification.

      # An error code for a verification attempt.
      #
      # @see WhopSDK::Models::VerificationRetrieveResponse#last_error_code
      module LastErrorCode
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

      # The status of the verification.
      #
      # @see WhopSDK::Models::VerificationRetrieveResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        REQUIRES_INPUT = :requires_input
        PROCESSING = :processing
        VERIFIED = :verified
        CANCELED = :canceled
        CREATED = :created
        STARTED = :started
        SUBMITTED = :submitted
        APPROVED = :approved
        DECLINED = :declined
        RESUBMISSION_REQUESTED = :resubmission_requested
        EXPIRED = :expired
        ABANDONED = :abandoned
        REVIEW = :review

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
