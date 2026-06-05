# frozen_string_literal: true

module WhopSDK
  module Models
    class IdentityProfileNeedsActionWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute data
      #   A consolidated identity or business profile synced from verification provider
      #   data.
      #
      #   @return [WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data]
      required :data, -> { WhopSDK::IdentityProfileNeedsActionWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"identity_profile.needs_action"]
      required :type, const: :"identity_profile.needs_action"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"identity_profile.needs_action")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data] A consolidated identity or business profile synced from verification provider da
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"identity_profile.needs_action"] The webhook event type

      # @see WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The tag of the identity profile (idpf_xxx).
        #
        #   @return [String]
        required :id, String

        # @!attribute business_address
        #   Registered business address reported by the identity provider. Present on
        #   `business` profiles.
        #
        #   @return [WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::BusinessAddress, nil]
        required :business_address,
                 -> { WhopSDK::IdentityProfileNeedsActionWebhookEvent::Data::BusinessAddress },
                 nil?: true

        # @!attribute business_name
        #   Business entity name. Present on `business` profiles.
        #
        #   @return [String, nil]
        required :business_name, String, nil?: true

        # @!attribute business_structure
        #   Reported legal structure of a business profile (e.g. `corp`, `llc`).
        #   Provider-specific values; present on `business` profiles.
        #
        #   @return [String, nil]
        required :business_structure, String, nil?: true

        # @!attribute country
        #   ISO 3166-1 alpha-3 country code (e.g. `USA`, `GBR`). For individuals this is the
        #   country of citizenship or residence reported by the identity provider; for
        #   businesses this is the country of incorporation.
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute created_at
        #   When the identity profile was first created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute date_of_birth
        #   ISO date (`YYYY-MM-DD`) reported by the identity provider. Present on
        #   `individual` profiles.
        #
        #   @return [String, nil]
        required :date_of_birth, String, nil?: true

        # @!attribute email
        #   Email address reported by the identity provider. Typically present on
        #   `individual` profiles.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute first_name
        #   Individual's first name.
        #
        #   @return [String, nil]
        required :first_name, String, nil?: true

        # @!attribute last_name
        #   Individual's last name.
        #
        #   @return [String, nil]
        required :last_name, String, nil?: true

        # @!attribute linked_companies
        #   The companies this identity profile is currently linked to. Only populated for
        #   direct Whop user sessions; always empty when authenticated via API key, app, or
        #   OAuth scope (a single identity can be linked to companies the calling platform
        #   is not entitled to see).
        #
        #   @return [Array<WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::LinkedCompany>]
        required :linked_companies,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::IdentityProfileNeedsActionWebhookEvent::Data::LinkedCompany] }

        # @!attribute personal_address
        #   Residential address reported by the identity provider. Present on `individual`
        #   profiles.
        #
        #   @return [WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::PersonalAddress, nil]
        required :personal_address,
                 -> { WhopSDK::IdentityProfileNeedsActionWebhookEvent::Data::PersonalAddress },
                 nil?: true

        # @!attribute phone
        #   Phone number reported by the identity provider. Typically present on
        #   `individual` profiles.
        #
        #   @return [String, nil]
        required :phone, String, nil?: true

        # @!attribute profile_type
        #   Whether this is an 'individual' or 'business' profile.
        #
        #   @return [String]
        required :profile_type, String

        # @!attribute status
        #   Derived verification status across all linked verifications.
        #
        #   @return [Symbol, WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::IdentityProfileNeedsActionWebhookEvent::Data::Status }

        # @!attribute updated_at
        #   When the identity profile was last synced from a verification.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute verifications
        #   All verification attempts attached to this identity profile, ordered most-recent
        #   first.
        #
        #   @return [Array<WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification>]
        required :verifications,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::IdentityProfileNeedsActionWebhookEvent::Data::Verification] }

        # @!method initialize(id:, business_address:, business_name:, business_structure:, country:, created_at:, date_of_birth:, email:, first_name:, last_name:, linked_companies:, personal_address:, phone:, profile_type:, status:, updated_at:, verifications:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data} for more
        #   details.
        #
        #   A consolidated identity or business profile synced from verification provider
        #   data.
        #
        #   @param id [String] The tag of the identity profile (idpf_xxx).
        #
        #   @param business_address [WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::BusinessAddress, nil] Registered business address reported by the identity provider. Present on `busin
        #
        #   @param business_name [String, nil] Business entity name. Present on `business` profiles.
        #
        #   @param business_structure [String, nil] Reported legal structure of a business profile (e.g. `corp`, `llc`). Provider-sp
        #
        #   @param country [String, nil] ISO 3166-1 alpha-3 country code (e.g. `USA`, `GBR`). For individuals this is the
        #
        #   @param created_at [Time] When the identity profile was first created.
        #
        #   @param date_of_birth [String, nil] ISO date (`YYYY-MM-DD`) reported by the identity provider. Present on `individua
        #
        #   @param email [String, nil] Email address reported by the identity provider. Typically present on `individua
        #
        #   @param first_name [String, nil] Individual's first name.
        #
        #   @param last_name [String, nil] Individual's last name.
        #
        #   @param linked_companies [Array<WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::LinkedCompany>] The companies this identity profile is currently linked to. Only populated for d
        #
        #   @param personal_address [WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::PersonalAddress, nil] Residential address reported by the identity provider. Present on `individual` p
        #
        #   @param phone [String, nil] Phone number reported by the identity provider. Typically present on `individual
        #
        #   @param profile_type [String] Whether this is an 'individual' or 'business' profile.
        #
        #   @param status [Symbol, WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Status] Derived verification status across all linked verifications.
        #
        #   @param updated_at [Time] When the identity profile was last synced from a verification.
        #
        #   @param verifications [Array<WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification>] All verification attempts attached to this identity profile, ordered most-recent

        # @see WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data#business_address
        class BusinessAddress < WhopSDK::Internal::Type::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String, nil]
          required :city, String, nil?: true

          # @!attribute country
          #   The country of the address.
          #
          #   @return [String, nil]
          required :country, String, nil?: true

          # @!attribute line1
          #   The line 1 of the address.
          #
          #   @return [String, nil]
          required :line1, String, nil?: true

          # @!attribute line2
          #   The line 2 of the address.
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute postal_code
          #   The postal code of the address.
          #
          #   @return [String, nil]
          required :postal_code, String, nil?: true

          # @!attribute state
          #   The state of the address.
          #
          #   @return [String, nil]
          required :state, String, nil?: true

          # @!method initialize(city:, country:, line1:, line2:, postal_code:, state:)
          #   Registered business address reported by the identity provider. Present on
          #   `business` profiles.
          #
          #   @param city [String, nil] The city of the address.
          #
          #   @param country [String, nil] The country of the address.
          #
          #   @param line1 [String, nil] The line 1 of the address.
          #
          #   @param line2 [String, nil] The line 2 of the address.
          #
          #   @param postal_code [String, nil] The postal code of the address.
          #
          #   @param state [String, nil] The state of the address.
        end

        class LinkedCompany < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute title
          #   The display name of the company shown to customers.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, title:)
          #   A company is a seller on Whop. Companies own products, manage members, and
          #   receive payouts.
          #
          #   @param id [String] The unique identifier for the company.
          #
          #   @param title [String] The display name of the company shown to customers.
        end

        # @see WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data#personal_address
        class PersonalAddress < WhopSDK::Internal::Type::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String, nil]
          required :city, String, nil?: true

          # @!attribute country
          #   The country of the address.
          #
          #   @return [String, nil]
          required :country, String, nil?: true

          # @!attribute line1
          #   The line 1 of the address.
          #
          #   @return [String, nil]
          required :line1, String, nil?: true

          # @!attribute line2
          #   The line 2 of the address.
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute postal_code
          #   The postal code of the address.
          #
          #   @return [String, nil]
          required :postal_code, String, nil?: true

          # @!attribute state
          #   The state of the address.
          #
          #   @return [String, nil]
          required :state, String, nil?: true

          # @!method initialize(city:, country:, line1:, line2:, postal_code:, state:)
          #   Residential address reported by the identity provider. Present on `individual`
          #   profiles.
          #
          #   @param city [String, nil] The city of the address.
          #
          #   @param country [String, nil] The country of the address.
          #
          #   @param line1 [String, nil] The line 1 of the address.
          #
          #   @param line2 [String, nil] The line 2 of the address.
          #
          #   @param postal_code [String, nil] The postal code of the address.
          #
          #   @param state [String, nil] The state of the address.
        end

        # Derived verification status across all linked verifications.
        #
        # @see WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          NOT_STARTED = :not_started
          PENDING = :pending
          APPROVED = :approved
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Verification < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The numeric id of the verification record.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   When the verification record was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute last_error_code
          #   An error code for a verification attempt.
          #
          #   @return [Symbol, WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification::LastErrorCode, nil]
          required :last_error_code,
                   enum: -> {
                     WhopSDK::IdentityProfileNeedsActionWebhookEvent::Data::Verification::LastErrorCode
                   },
                   nil?: true

          # @!attribute last_error_reason
          #   A human-readable explanation of the most recent verification error. Null if no
          #   error has occurred.
          #
          #   @return [String, nil]
          required :last_error_reason, String, nil?: true

          # @!attribute session_url
          #   A URL the user can visit to complete the verification process. Null if the
          #   session does not require user interaction.
          #
          #   @return [String, nil]
          required :session_url, String, nil?: true

          # @!attribute status
          #   The current status of this verification session.
          #
          #   @return [Symbol, WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification::Status]
          required :status, enum: -> { WhopSDK::IdentityProfileNeedsActionWebhookEvent::Data::Verification::Status }

          # @!method initialize(id:, created_at:, last_error_code:, last_error_reason:, session_url:, status:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification}
          #   for more details.
          #
          #   An identity verification session used to confirm a person or entity's identity
          #   for payout account eligibility.
          #
          #   @param id [String] The numeric id of the verification record.
          #
          #   @param created_at [Time] When the verification record was created.
          #
          #   @param last_error_code [Symbol, WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification::LastErrorCode, nil] An error code for a verification attempt.
          #
          #   @param last_error_reason [String, nil] A human-readable explanation of the most recent verification error. Null if no e
          #
          #   @param session_url [String, nil] A URL the user can visit to complete the verification process. Null if the sessi
          #
          #   @param status [Symbol, WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification::Status] The current status of this verification session.

          # An error code for a verification attempt.
          #
          # @see WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification#last_error_code
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

          # The current status of this verification session.
          #
          # @see WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent::Data::Verification#status
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
            ACTION_REQUIRED = :action_required

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
