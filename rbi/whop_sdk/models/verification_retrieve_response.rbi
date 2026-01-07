# typed: strong

module WhopSDK
  module Models
    class VerificationRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::VerificationRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique identifier for the verification.
      sig { returns(String) }
      attr_accessor :id

      # An error code for a verification attempt.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        )
      end
      attr_accessor :last_error_code

      # The last error reason that occurred during the verification.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_error_reason

      # The status of the verification.
      sig do
        returns(
          WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # An object representing an identity verification session
      sig do
        params(
          id: String,
          last_error_code:
            T.nilable(
              WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::OrSymbol
            ),
          last_error_reason: T.nilable(String),
          status:
            WhopSDK::Models::VerificationRetrieveResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for the verification.
        id:,
        # An error code for a verification attempt.
        last_error_code:,
        # The last error reason that occurred during the verification.
        last_error_reason:,
        # The status of the verification.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            last_error_code:
              T.nilable(
                WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
              ),
            last_error_reason: T.nilable(String),
            status:
              WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # An error code for a verification attempt.
      module LastErrorCode
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABANDONED =
          T.let(
            :abandoned,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        CONSENT_DECLINED =
          T.let(
            :consent_declined,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        COUNTRY_NOT_SUPPORTED =
          T.let(
            :country_not_supported,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        DEVICE_NOT_SUPPORTED =
          T.let(
            :device_not_supported,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        DOCUMENT_EXPIRED =
          T.let(
            :document_expired,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        DOCUMENT_TYPE_NOT_SUPPORTED =
          T.let(
            :document_type_not_supported,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        DOCUMENT_UNVERIFIED_OTHER =
          T.let(
            :document_unverified_other,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        EMAIL_UNVERIFIED_OTHER =
          T.let(
            :email_unverified_other,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        EMAIL_VERIFICATION_DECLINED =
          T.let(
            :email_verification_declined,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        ID_NUMBER_INSUFFICIENT_DOCUMENT_DATA =
          T.let(
            :id_number_insufficient_document_data,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        ID_NUMBER_MISMATCH =
          T.let(
            :id_number_mismatch,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        ID_NUMBER_UNVERIFIED_OTHER =
          T.let(
            :id_number_unverified_other,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        PHONE_UNVERIFIED_OTHER =
          T.let(
            :phone_unverified_other,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        PHONE_VERIFICATION_DECLINED =
          T.let(
            :phone_verification_declined,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        SELFIE_DOCUMENT_MISSING_PHOTO =
          T.let(
            :selfie_document_missing_photo,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        SELFIE_FACE_MISMATCH =
          T.let(
            :selfie_face_mismatch,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        SELFIE_MANIPULATED =
          T.let(
            :selfie_manipulated,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        SELFIE_UNVERIFIED_OTHER =
          T.let(
            :selfie_unverified_other,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )
        UNDER_SUPPORTED_AGE =
          T.let(
            :under_supported_age,
            WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The status of the verification.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::VerificationRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REQUIRES_INPUT =
          T.let(
            :requires_input,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :verified,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        CREATED =
          T.let(
            :created,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        STARTED =
          T.let(
            :started,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        SUBMITTED =
          T.let(
            :submitted,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        DECLINED =
          T.let(
            :declined,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        RESUBMISSION_REQUESTED =
          T.let(
            :resubmission_requested,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :expired,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        ABANDONED =
          T.let(
            :abandoned,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )
        REVIEW =
          T.let(
            :review,
            WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::VerificationRetrieveResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
