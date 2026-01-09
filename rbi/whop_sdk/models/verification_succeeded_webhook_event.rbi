# typed: strong

module WhopSDK
  module Models
    class VerificationSucceededWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::VerificationSucceededWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # An object representing an identity verification session
      sig { returns(WhopSDK::VerificationSucceededWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::VerificationSucceededWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The company ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      sig do
        params(
          id: String,
          data: WhopSDK::VerificationSucceededWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing an identity verification session
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"verification.succeeded"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::VerificationSucceededWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            company_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::VerificationSucceededWebhookEvent::Data,
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
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
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
            WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # An object representing an identity verification session
        sig do
          params(
            id: String,
            last_error_code:
              T.nilable(
                WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::OrSymbol
              ),
            last_error_reason: T.nilable(String),
            status:
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::OrSymbol
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
                  WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
                ),
              last_error_reason: T.nilable(String),
              status:
                WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
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
                WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED =
            T.let(
              :abandoned,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          CONSENT_DECLINED =
            T.let(
              :consent_declined,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          COUNTRY_NOT_SUPPORTED =
            T.let(
              :country_not_supported,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          DEVICE_NOT_SUPPORTED =
            T.let(
              :device_not_supported,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          DOCUMENT_EXPIRED =
            T.let(
              :document_expired,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          DOCUMENT_TYPE_NOT_SUPPORTED =
            T.let(
              :document_type_not_supported,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          DOCUMENT_UNVERIFIED_OTHER =
            T.let(
              :document_unverified_other,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          EMAIL_UNVERIFIED_OTHER =
            T.let(
              :email_unverified_other,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          EMAIL_VERIFICATION_DECLINED =
            T.let(
              :email_verification_declined,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          ID_NUMBER_INSUFFICIENT_DOCUMENT_DATA =
            T.let(
              :id_number_insufficient_document_data,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          ID_NUMBER_MISMATCH =
            T.let(
              :id_number_mismatch,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          ID_NUMBER_UNVERIFIED_OTHER =
            T.let(
              :id_number_unverified_other,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          PHONE_UNVERIFIED_OTHER =
            T.let(
              :phone_unverified_other,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          PHONE_VERIFICATION_DECLINED =
            T.let(
              :phone_verification_declined,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          SELFIE_DOCUMENT_MISSING_PHOTO =
            T.let(
              :selfie_document_missing_photo,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          SELFIE_FACE_MISMATCH =
            T.let(
              :selfie_face_mismatch,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          SELFIE_MANIPULATED =
            T.let(
              :selfie_manipulated,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          SELFIE_UNVERIFIED_OTHER =
            T.let(
              :selfie_unverified_other,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )
          UNDER_SUPPORTED_AGE =
            T.let(
              :under_supported_age,
              WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::VerificationSucceededWebhookEvent::Data::LastErrorCode::TaggedSymbol
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
              T.all(
                Symbol,
                WhopSDK::VerificationSucceededWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REQUIRES_INPUT =
            T.let(
              :requires_input,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          CREATED =
            T.let(
              :created,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          STARTED =
            T.let(
              :started,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          SUBMITTED =
            T.let(
              :submitted,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :declined,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          RESUBMISSION_REQUESTED =
            T.let(
              :resubmission_requested,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          ABANDONED =
            T.let(
              :abandoned,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::VerificationSucceededWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
