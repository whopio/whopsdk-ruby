# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#list
    class VerificationListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<WhopSDK::Models::VerificationListResponse::Data>, nil]
      optional :data, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationListResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<WhopSDK::Models::VerificationListResponse::Data>]

      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Verification profile ID, prefixed `idpf_`.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute address
        #   Address on the verification profile. `null` when no address is set.
        #
        #   @return [WhopSDK::Models::VerificationListResponse::Data::Address, nil]
        optional :address, -> { WhopSDK::Models::VerificationListResponse::Data::Address }, nil?: true

        # @!attribute business_name
        #   Legal business name.
        #
        #   @return [String, nil]
        optional :business_name, String, nil?: true

        # @!attribute business_structure
        #   Legal entity structure of the business, such as `private_corporation` or
        #   `sole_proprietorship`. Supported values vary by country of incorporation — see
        #   [Business structures](/developer/verification/business-structures).
        #
        #   @return [String, nil]
        optional :business_structure, String, nil?: true

        # @!attribute country
        #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute created_at
        #   When the verification profile was created, as an ISO 8601 timestamp.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute date_of_birth
        #   Formatted as `YYYY-MM-DD`.
        #
        #   @return [String, nil]
        optional :date_of_birth, String, nil?: true

        # @!attribute email
        #   Email address on the verification profile.
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute kind
        #
        #   @return [Symbol, WhopSDK::Models::VerificationListResponse::Data::Kind, nil]
        optional :kind, enum: -> { WhopSDK::Models::VerificationListResponse::Data::Kind }

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute phone
        #   Phone number on the verification profile.
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!attribute requested_information
        #   What Whop still needs before review can continue — one requirement per entry.
        #   Answer with Update Verification; nothing from the response is echoed back. Keys
        #   that don't apply are omitted.
        #
        #   @return [Array<WhopSDK::Models::VerificationListResponse::Data::RequestedInformation>, nil]
        optional :requested_information,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationListResponse::Data::RequestedInformation] }

        # @!attribute required_documents
        #   Documents for a document-upload verification and their progress. Present only on
        #   verifications created by sending `documents`. `pending_upload` documents were
        #   not accepted yet — send the full set again with another Create Verification
        #   call.
        #
        #   @return [Array<WhopSDK::Models::VerificationListResponse::Data::RequiredDocument>, nil]
        optional :required_documents,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationListResponse::Data::RequiredDocument] }

        # @!attribute session_url
        #   Hosted verification session URL for the user to complete identity checks.
        #   Expires 7 days after creation.
        #
        #   @return [String, nil]
        optional :session_url, String, nil?: true

        # @!attribute status
        #   Current verification state. `not_started` before any session exists; `pending`
        #   while a session needs the user's input; `processing` while the provider's
        #   automated checks run on a fresh submission; `action_required` when
        #   `requested_information` needs answers; `manual_review` while information already
        #   sent is under review — an audit answer, or a document the payout provider holds
        #   — nothing to submit, usually done within 3 business days; `approved` on success;
        #   `rejected` on failure. Call Create Verification again to start a new session.
        #
        #   @return [Symbol, WhopSDK::Models::VerificationListResponse::Data::Status, nil]
        optional :status, enum: -> { WhopSDK::Models::VerificationListResponse::Data::Status }

        # @!attribute updated_at
        #   When the verification profile was last updated, as an ISO 8601 timestamp.
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!method initialize(id: nil, address: nil, business_name: nil, business_structure: nil, country: nil, created_at: nil, date_of_birth: nil, email: nil, first_name: nil, kind: nil, last_name: nil, phone: nil, requested_information: nil, required_documents: nil, session_url: nil, status: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::VerificationListResponse::Data} for more details.
        #
        #   @param id [String] Verification profile ID, prefixed `idpf_`.
        #
        #   @param address [WhopSDK::Models::VerificationListResponse::Data::Address, nil] Address on the verification profile. `null` when no address is set.
        #
        #   @param business_name [String, nil] Legal business name.
        #
        #   @param business_structure [String, nil] Legal entity structure of the business, such as `private_corporation` or `sole_p
        #
        #   @param country [String, nil] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
        #
        #   @param created_at [String] When the verification profile was created, as an ISO 8601 timestamp.
        #
        #   @param date_of_birth [String, nil] Formatted as `YYYY-MM-DD`.
        #
        #   @param email [String, nil] Email address on the verification profile.
        #
        #   @param first_name [String, nil]
        #
        #   @param kind [Symbol, WhopSDK::Models::VerificationListResponse::Data::Kind]
        #
        #   @param last_name [String, nil]
        #
        #   @param phone [String, nil] Phone number on the verification profile.
        #
        #   @param requested_information [Array<WhopSDK::Models::VerificationListResponse::Data::RequestedInformation>] What Whop still needs before review can continue — one requirement per entry. An
        #
        #   @param required_documents [Array<WhopSDK::Models::VerificationListResponse::Data::RequiredDocument>] Documents for a document-upload verification and their progress. Present only on
        #
        #   @param session_url [String, nil] Hosted verification session URL for the user to complete identity checks. Expire
        #
        #   @param status [Symbol, WhopSDK::Models::VerificationListResponse::Data::Status] Current verification state. `not_started` before any session exists; `pending` w
        #
        #   @param updated_at [String] When the verification profile was last updated, as an ISO 8601 timestamp.

        # @see WhopSDK::Models::VerificationListResponse::Data#address
        class Address < WhopSDK::Internal::Type::BaseModel
          # @!attribute city
          #
          #   @return [String, nil]
          optional :city, String, nil?: true

          # @!attribute country
          #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          #
          #   @return [String, nil]
          optional :country, String, nil?: true

          # @!attribute line1
          #   First line of the street address.
          #
          #   @return [String, nil]
          optional :line1, String

          # @!attribute line2
          #   Second line of the street address.
          #
          #   @return [String, nil]
          optional :line2, String, nil?: true

          # @!attribute postal_code
          #   Postal or ZIP code.
          #
          #   @return [String, nil]
          optional :postal_code, String, nil?: true

          # @!attribute state
          #   State, province, or region code, for example `CA`.
          #
          #   @return [String, nil]
          optional :state, String, nil?: true

          # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
          #   Address on the verification profile. `null` when no address is set.
          #
          #   @param city [String, nil]
          #
          #   @param country [String, nil] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          #
          #   @param line1 [String] First line of the street address.
          #
          #   @param line2 [String, nil] Second line of the street address.
          #
          #   @param postal_code [String, nil] Postal or ZIP code.
          #
          #   @param state [String, nil] State, province, or region code, for example `CA`.
        end

        # @see WhopSDK::Models::VerificationListResponse::Data#kind
        module Kind
          extend WhopSDK::Internal::Type::Enum

          INDIVIDUAL = :individual
          BUSINESS = :business

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class RequestedInformation < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Requested information item ID, prefixed `inrqi_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute label
          #   Instruction to show the user. Carries the reviewer's note verbatim when there is
          #   one.
          #
          #   @return [String]
          required :label, String

          # @!attribute requirement
          #   What is needed: a document name such as `bank_statement`, or a field key such as
          #   `ssn` or `identity_document`. Handle unrecognized values by `type`.
          #
          #   @return [String]
          required :requirement, String

          # @!attribute type
          #   What to send as the answer, so you never have to infer it: `files` (a document,
          #   as a list of its pages), `id_document` (send `documents` with the slot keys for
          #   the ID you are uploading), `text`, `date`, `phone` or `select` (send `value`),
          #   or `address` (send `address`).
          #
          #   @return [String]
          required :type, String

          # @!attribute errors
          #   Present after a rejected submission.
          #
          #   @return [Array<WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::Error>, nil]
          optional :errors,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::Error] }

          # @!attribute optional
          #   `true` when the item can be skipped.
          #
          #   @return [Boolean, nil]
          optional :optional, WhopSDK::Internal::Type::Boolean

          # @!attribute options
          #   The values `value` may take on a `select` item. On an `id_document` item these
          #   are the ID types accepted, and the chosen one decides which `documents` slots to
          #   send. Absent when the item has no choice to make.
          #
          #   @return [Array<String>, nil]
          optional :options, WhopSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(id:, label:, requirement:, type:, errors: nil, optional: nil, options: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::VerificationListResponse::Data::RequestedInformation} for more
          #   details.
          #
          #   @param id [String] Requested information item ID, prefixed `inrqi_`.
          #
          #   @param label [String] Instruction to show the user. Carries the reviewer's note verbatim when there is
          #
          #   @param requirement [String] What is needed: a document name such as `bank_statement`, or a field key such as
          #
          #   @param type [String] What to send as the answer, so you never have to infer it: `files` (a document,
          #
          #   @param errors [Array<WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::Error>] Present after a rejected submission.
          #
          #   @param optional [Boolean] `true` when the item can be skipped.
          #
          #   @param options [Array<String>] The values `value` may take on a `select` item. On an `id_document` item these a

          class Error < WhopSDK::Internal::Type::BaseModel
            # @!attribute code
            #   Stable error code.
            #
            #   @return [String, nil]
            optional :code, String

            # @!attribute reason
            #   Why it was rejected.
            #
            #   @return [String, nil]
            optional :reason, String

            # @!method initialize(code: nil, reason: nil)
            #   @param code [String] Stable error code.
            #
            #   @param reason [String] Why it was rejected.
          end
        end

        class RequiredDocument < WhopSDK::Internal::Type::BaseModel
          # @!attribute document
          #   Document slot key, such as `id_card_front`, `id_card_back`, or `selfie`.
          #
          #   @return [String, nil]
          optional :document, String

          # @!attribute rejection_reason
          #   Why the previous submission was rejected, when the provider requested new
          #   documents or declined the verification.
          #
          #   @return [String, nil]
          optional :rejection_reason, String, nil?: true

          # @!attribute status
          #   `pending_upload` until the document has been relayed for review; `submitted`
          #   afterwards.
          #
          #   @return [Symbol, WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status, nil]
          optional :status, enum: -> { WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status }

          # @!method initialize(document: nil, rejection_reason: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::VerificationListResponse::Data::RequiredDocument} for more
          #   details.
          #
          #   @param document [String] Document slot key, such as `id_card_front`, `id_card_back`, or `selfie`.
          #
          #   @param rejection_reason [String, nil] Why the previous submission was rejected, when the provider requested new docume
          #
          #   @param status [Symbol, WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status] `pending_upload` until the document has been relayed for review; `submitted` aft

          # `pending_upload` until the document has been relayed for review; `submitted`
          # afterwards.
          #
          # @see WhopSDK::Models::VerificationListResponse::Data::RequiredDocument#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            PENDING_UPLOAD = :pending_upload
            SUBMITTED = :submitted

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Current verification state. `not_started` before any session exists; `pending`
        # while a session needs the user's input; `processing` while the provider's
        # automated checks run on a fresh submission; `action_required` when
        # `requested_information` needs answers; `manual_review` while information already
        # sent is under review — an audit answer, or a document the payout provider holds
        # — nothing to submit, usually done within 3 business days; `approved` on success;
        # `rejected` on failure. Call Create Verification again to start a new session.
        #
        # @see WhopSDK::Models::VerificationListResponse::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          NOT_STARTED = :not_started
          PENDING = :pending
          PROCESSING = :processing
          MANUAL_REVIEW = :manual_review
          APPROVED = :approved
          REJECTED = :rejected
          ACTION_REQUIRED = :action_required

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
