# typed: strong

module WhopSDK
  module Models
    class PayoutAccountStatusUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::PayoutAccountStatusUpdatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # An object representing an account used for payouts.
      sig { returns(WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::OrHash
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
          data: WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing an account used for payouts.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"payout_account.status_updated"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data,
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
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payout account.
        sig { returns(String) }
        attr_accessor :id

        # The physical address associated with this payout account
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address
            )
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address::OrHash
              )
          ).void
        end
        attr_writer :address

        # The company's legal name
        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        # The business representative for this payout account
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative
            )
          )
        end
        attr_reader :business_representative

        sig do
          params(
            business_representative:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative::OrHash
              )
          ).void
        end
        attr_writer :business_representative

        # The email address of the representative
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The latest verification for the connected account.
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification
            )
          )
        end
        attr_reader :latest_verification

        sig do
          params(
            latest_verification:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::OrHash
              )
          ).void
        end
        attr_writer :latest_verification

        # The business representative's phone
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # The granular calculated statuses reflecting payout account KYC and withdrawal
        # readiness.
        sig do
          returns(
            T.nilable(WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol)
          )
        end
        attr_accessor :status

        # An object representing an account used for payouts.
        sig do
          params(
            id: String,
            address:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address::OrHash
              ),
            business_name: T.nilable(String),
            business_representative:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative::OrHash
              ),
            email: T.nilable(String),
            latest_verification:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::OrHash
              ),
            phone: T.nilable(String),
            status:
              T.nilable(WhopSDK::PayoutAccountCalculatedStatuses::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the payout account.
          id:,
          # The physical address associated with this payout account
          address:,
          # The company's legal name
          business_name:,
          # The business representative for this payout account
          business_representative:,
          # The email address of the representative
          email:,
          # The latest verification for the connected account.
          latest_verification:,
          # The business representative's phone
          phone:,
          # The granular calculated statuses reflecting payout account KYC and withdrawal
          # readiness.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address:
                T.nilable(
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address
                ),
              business_name: T.nilable(String),
              business_representative:
                T.nilable(
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative
                ),
              email: T.nilable(String),
              latest_verification:
                T.nilable(
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification
                ),
              phone: T.nilable(String),
              status:
                T.nilable(
                  WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        class Address < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address,
                WhopSDK::Internal::AnyHash
              )
            end

          # The city of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :city

          # The country of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :country

          # The line 1 of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          # The line 2 of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # The postal code of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # The state of the address.
          sig { returns(T.nilable(String)) }
          attr_accessor :state

          # The physical address associated with this payout account
          sig do
            params(
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The city of the address.
            city:,
            # The country of the address.
            country:,
            # The line 1 of the address.
            line1:,
            # The line 2 of the address.
            line2:,
            # The postal code of the address.
            postal_code:,
            # The state of the address.
            state:
          )
          end

          sig do
            override.returns(
              {
                city: T.nilable(String),
                country: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                postal_code: T.nilable(String),
                state: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class BusinessRepresentative < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative,
                WhopSDK::Internal::AnyHash
              )
            end

          # The date of birth of the business representative in ISO 8601 format
          # (YYYY-MM-DD).
          sig { returns(T.nilable(String)) }
          attr_accessor :date_of_birth

          # The first name of the business representative.
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name

          # The last name of the business representative.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_name

          # The middle name of the business representative.
          sig { returns(T.nilable(String)) }
          attr_accessor :middle_name

          # The business representative for this payout account
          sig do
            params(
              date_of_birth: T.nilable(String),
              first_name: T.nilable(String),
              last_name: T.nilable(String),
              middle_name: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The date of birth of the business representative in ISO 8601 format
            # (YYYY-MM-DD).
            date_of_birth:,
            # The first name of the business representative.
            first_name:,
            # The last name of the business representative.
            last_name:,
            # The middle name of the business representative.
            middle_name:
          )
          end

          sig do
            override.returns(
              {
                date_of_birth: T.nilable(String),
                first_name: T.nilable(String),
                last_name: T.nilable(String),
                middle_name: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class LatestVerification < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification,
                WhopSDK::Internal::AnyHash
              )
            end

          # The numeric id of the verification record.
          sig { returns(String) }
          attr_accessor :id

          # An error code for a verification attempt.
          sig do
            returns(
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            )
          end
          attr_accessor :last_error_code

          # A human-readable explanation of the most recent verification error. Null if no
          # error has occurred.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_error_reason

          # The current status of this verification session.
          sig do
            returns(
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The latest verification for the connected account.
          sig do
            params(
              id: String,
              last_error_code:
                T.nilable(
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::OrSymbol
                ),
              last_error_reason: T.nilable(String),
              status:
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The numeric id of the verification record.
            id:,
            # An error code for a verification attempt.
            last_error_code:,
            # A human-readable explanation of the most recent verification error. Null if no
            # error has occurred.
            last_error_reason:,
            # The current status of this verification session.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                last_error_code:
                  T.nilable(
                    WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
                  ),
                last_error_reason: T.nilable(String),
                status:
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
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
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ABANDONED =
              T.let(
                :abandoned,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            CONSENT_DECLINED =
              T.let(
                :consent_declined,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            COUNTRY_NOT_SUPPORTED =
              T.let(
                :country_not_supported,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            DEVICE_NOT_SUPPORTED =
              T.let(
                :device_not_supported,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_EXPIRED =
              T.let(
                :document_expired,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_TYPE_NOT_SUPPORTED =
              T.let(
                :document_type_not_supported,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_UNVERIFIED_OTHER =
              T.let(
                :document_unverified_other,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            EMAIL_UNVERIFIED_OTHER =
              T.let(
                :email_unverified_other,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            EMAIL_VERIFICATION_DECLINED =
              T.let(
                :email_verification_declined,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_INSUFFICIENT_DOCUMENT_DATA =
              T.let(
                :id_number_insufficient_document_data,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_MISMATCH =
              T.let(
                :id_number_mismatch,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_UNVERIFIED_OTHER =
              T.let(
                :id_number_unverified_other,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            PHONE_UNVERIFIED_OTHER =
              T.let(
                :phone_unverified_other,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            PHONE_VERIFICATION_DECLINED =
              T.let(
                :phone_verification_declined,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            SELFIE_DOCUMENT_MISSING_PHOTO =
              T.let(
                :selfie_document_missing_photo,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            SELFIE_FACE_MISMATCH =
              T.let(
                :selfie_face_mismatch,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            SELFIE_MANIPULATED =
              T.let(
                :selfie_manipulated,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            SELFIE_UNVERIFIED_OTHER =
              T.let(
                :selfie_unverified_other,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )
            UNDER_SUPPORTED_AGE =
              T.let(
                :under_supported_age,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::LastErrorCode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The current status of this verification session.
          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REQUIRES_INPUT =
              T.let(
                :requires_input,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            CREATED =
              T.let(
                :created,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            STARTED =
              T.let(
                :started,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            SUBMITTED =
              T.let(
                :submitted,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            APPROVED =
              T.let(
                :approved,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            DECLINED =
              T.let(
                :declined,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            RESUBMISSION_REQUESTED =
              T.let(
                :resubmission_requested,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            ABANDONED =
              T.let(
                :abandoned,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            REVIEW =
              T.let(
                :review,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )
            ACTION_REQUIRED =
              T.let(
                :action_required,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::Status::TaggedSymbol
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
end
