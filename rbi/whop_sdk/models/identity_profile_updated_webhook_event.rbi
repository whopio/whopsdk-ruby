# typed: strong

module WhopSDK
  module Models
    class IdentityProfileUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::IdentityProfileUpdatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # A consolidated identity or business profile synced from verification provider
      # data.
      sig { returns(WhopSDK::IdentityProfileUpdatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::OrHash
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
          data: WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # A consolidated identity or business profile synced from verification provider
        # data.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"identity_profile.updated"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::IdentityProfileUpdatedWebhookEvent::Data,
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
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The tag of the identity profile (idpf_xxx).
        sig { returns(String) }
        attr_accessor :id

        # Registered business address reported by the identity provider. Present on
        # `business` profiles.
        sig do
          returns(
            T.nilable(
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::BusinessAddress
            )
          )
        end
        attr_reader :business_address

        sig do
          params(
            business_address:
              T.nilable(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::BusinessAddress::OrHash
              )
          ).void
        end
        attr_writer :business_address

        # Business entity name. Present on `business` profiles.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_name

        # Reported legal structure of a business profile (e.g. `corp`, `llc`).
        # Provider-specific values; present on `business` profiles.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_structure

        # ISO 3166-1 alpha-3 country code (e.g. `USA`, `GBR`). For individuals this is the
        # country of citizenship or residence reported by the identity provider; for
        # businesses this is the country of incorporation.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # When the identity profile was first created.
        sig { returns(Time) }
        attr_accessor :created_at

        # ISO date (`YYYY-MM-DD`) reported by the identity provider. Present on
        # `individual` profiles.
        sig { returns(T.nilable(String)) }
        attr_accessor :date_of_birth

        # Email address reported by the identity provider. Typically present on
        # `individual` profiles.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # Individual's first name.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # Individual's last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The companies this identity profile is currently linked to. Only populated for
        # direct Whop user sessions; always empty when authenticated via API key, app, or
        # OAuth scope (a single identity can be linked to companies the calling platform
        # is not entitled to see).
        sig do
          returns(
            T::Array[
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::LinkedCompany
            ]
          )
        end
        attr_accessor :linked_companies

        # Residential address reported by the identity provider. Present on `individual`
        # profiles.
        sig do
          returns(
            T.nilable(
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::PersonalAddress
            )
          )
        end
        attr_reader :personal_address

        sig do
          params(
            personal_address:
              T.nilable(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::PersonalAddress::OrHash
              )
          ).void
        end
        attr_writer :personal_address

        # Phone number reported by the identity provider. Typically present on
        # `individual` profiles.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # Whether this is an 'individual' or 'business' profile.
        sig { returns(String) }
        attr_accessor :profile_type

        # Derived verification status across all linked verifications.
        sig do
          returns(
            WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # When the identity profile was last synced from a verification.
        sig { returns(Time) }
        attr_accessor :updated_at

        # All verification attempts attached to this identity profile, ordered most-recent
        # first.
        sig do
          returns(
            T::Array[
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification
            ]
          )
        end
        attr_accessor :verifications

        # A consolidated identity or business profile synced from verification provider
        # data.
        sig do
          params(
            id: String,
            business_address:
              T.nilable(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::BusinessAddress::OrHash
              ),
            business_name: T.nilable(String),
            business_structure: T.nilable(String),
            country: T.nilable(String),
            created_at: Time,
            date_of_birth: T.nilable(String),
            email: T.nilable(String),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            linked_companies:
              T::Array[
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::LinkedCompany::OrHash
              ],
            personal_address:
              T.nilable(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::PersonalAddress::OrHash
              ),
            phone: T.nilable(String),
            profile_type: String,
            status:
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status::OrSymbol,
            updated_at: Time,
            verifications:
              T::Array[
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The tag of the identity profile (idpf_xxx).
          id:,
          # Registered business address reported by the identity provider. Present on
          # `business` profiles.
          business_address:,
          # Business entity name. Present on `business` profiles.
          business_name:,
          # Reported legal structure of a business profile (e.g. `corp`, `llc`).
          # Provider-specific values; present on `business` profiles.
          business_structure:,
          # ISO 3166-1 alpha-3 country code (e.g. `USA`, `GBR`). For individuals this is the
          # country of citizenship or residence reported by the identity provider; for
          # businesses this is the country of incorporation.
          country:,
          # When the identity profile was first created.
          created_at:,
          # ISO date (`YYYY-MM-DD`) reported by the identity provider. Present on
          # `individual` profiles.
          date_of_birth:,
          # Email address reported by the identity provider. Typically present on
          # `individual` profiles.
          email:,
          # Individual's first name.
          first_name:,
          # Individual's last name.
          last_name:,
          # The companies this identity profile is currently linked to. Only populated for
          # direct Whop user sessions; always empty when authenticated via API key, app, or
          # OAuth scope (a single identity can be linked to companies the calling platform
          # is not entitled to see).
          linked_companies:,
          # Residential address reported by the identity provider. Present on `individual`
          # profiles.
          personal_address:,
          # Phone number reported by the identity provider. Typically present on
          # `individual` profiles.
          phone:,
          # Whether this is an 'individual' or 'business' profile.
          profile_type:,
          # Derived verification status across all linked verifications.
          status:,
          # When the identity profile was last synced from a verification.
          updated_at:,
          # All verification attempts attached to this identity profile, ordered most-recent
          # first.
          verifications:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              business_address:
                T.nilable(
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::BusinessAddress
                ),
              business_name: T.nilable(String),
              business_structure: T.nilable(String),
              country: T.nilable(String),
              created_at: Time,
              date_of_birth: T.nilable(String),
              email: T.nilable(String),
              first_name: T.nilable(String),
              last_name: T.nilable(String),
              linked_companies:
                T::Array[
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::LinkedCompany
                ],
              personal_address:
                T.nilable(
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::PersonalAddress
                ),
              phone: T.nilable(String),
              profile_type: String,
              status:
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status::TaggedSymbol,
              updated_at: Time,
              verifications:
                T::Array[
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification
                ]
            }
          )
        end
        def to_hash
        end

        class BusinessAddress < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::BusinessAddress,
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

          # Registered business address reported by the identity provider. Present on
          # `business` profiles.
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

        class LinkedCompany < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::LinkedCompany,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the company.
          sig { returns(String) }
          attr_accessor :id

          # The display name of the company shown to customers.
          sig { returns(String) }
          attr_accessor :title

          # A company is a seller on Whop. Companies own products, manage members, and
          # receive payouts.
          sig { params(id: String, title: String).returns(T.attached_class) }
          def self.new(
            # The unique identifier for the company.
            id:,
            # The display name of the company shown to customers.
            title:
          )
          end

          sig { override.returns({ id: String, title: String }) }
          def to_hash
          end
        end

        class PersonalAddress < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::PersonalAddress,
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

          # Residential address reported by the identity provider. Present on `individual`
          # profiles.
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

        # Derived verification status across all linked verifications.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_STARTED =
            T.let(
              :not_started,
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Verification < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification,
                WhopSDK::Internal::AnyHash
              )
            end

          # The numeric id of the verification record.
          sig { returns(String) }
          attr_accessor :id

          # When the verification record was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # An error code for a verification attempt.
          sig do
            returns(
              T.nilable(
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            )
          end
          attr_accessor :last_error_code

          # A human-readable explanation of the most recent verification error. Null if no
          # error has occurred.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_error_reason

          # A URL the user can visit to complete the verification process. Null if the
          # session does not require user interaction.
          sig { returns(T.nilable(String)) }
          attr_accessor :session_url

          # The current status of this verification session.
          sig do
            returns(
              WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # An identity verification session used to confirm a person or entity's identity
          # for payout account eligibility.
          sig do
            params(
              id: String,
              created_at: Time,
              last_error_code:
                T.nilable(
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::OrSymbol
                ),
              last_error_reason: T.nilable(String),
              session_url: T.nilable(String),
              status:
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The numeric id of the verification record.
            id:,
            # When the verification record was created.
            created_at:,
            # An error code for a verification attempt.
            last_error_code:,
            # A human-readable explanation of the most recent verification error. Null if no
            # error has occurred.
            last_error_reason:,
            # A URL the user can visit to complete the verification process. Null if the
            # session does not require user interaction.
            session_url:,
            # The current status of this verification session.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                last_error_code:
                  T.nilable(
                    WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
                  ),
                last_error_reason: T.nilable(String),
                session_url: T.nilable(String),
                status:
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
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
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ABANDONED =
              T.let(
                :abandoned,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            CONSENT_DECLINED =
              T.let(
                :consent_declined,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            COUNTRY_NOT_SUPPORTED =
              T.let(
                :country_not_supported,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            DEVICE_NOT_SUPPORTED =
              T.let(
                :device_not_supported,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_EXPIRED =
              T.let(
                :document_expired,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_TYPE_NOT_SUPPORTED =
              T.let(
                :document_type_not_supported,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_UNVERIFIED_OTHER =
              T.let(
                :document_unverified_other,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            EMAIL_UNVERIFIED_OTHER =
              T.let(
                :email_unverified_other,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            EMAIL_VERIFICATION_DECLINED =
              T.let(
                :email_verification_declined,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_INSUFFICIENT_DOCUMENT_DATA =
              T.let(
                :id_number_insufficient_document_data,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_MISMATCH =
              T.let(
                :id_number_mismatch,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_UNVERIFIED_OTHER =
              T.let(
                :id_number_unverified_other,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            PHONE_UNVERIFIED_OTHER =
              T.let(
                :phone_unverified_other,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            PHONE_VERIFICATION_DECLINED =
              T.let(
                :phone_verification_declined,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            SELFIE_DOCUMENT_MISSING_PHOTO =
              T.let(
                :selfie_document_missing_photo,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            SELFIE_FACE_MISMATCH =
              T.let(
                :selfie_face_mismatch,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            SELFIE_MANIPULATED =
              T.let(
                :selfie_manipulated,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            SELFIE_UNVERIFIED_OTHER =
              T.let(
                :selfie_unverified_other,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )
            UNDER_SUPPORTED_AGE =
              T.let(
                :under_supported_age,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::LastErrorCode::TaggedSymbol
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
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REQUIRES_INPUT =
              T.let(
                :requires_input,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            CREATED =
              T.let(
                :created,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            STARTED =
              T.let(
                :started,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            SUBMITTED =
              T.let(
                :submitted,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            APPROVED =
              T.let(
                :approved,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            DECLINED =
              T.let(
                :declined,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            RESUBMISSION_REQUESTED =
              T.let(
                :resubmission_requested,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            ABANDONED =
              T.let(
                :abandoned,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            REVIEW =
              T.let(
                :review,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )
            ACTION_REQUIRED =
              T.let(
                :action_required,
                WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::IdentityProfileUpdatedWebhookEvent::Data::Verification::Status::TaggedSymbol
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
