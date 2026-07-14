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

        # @!attribute requested_information
        #   Fields or documents Whop still needs before review can continue. Submit answers
        #   with the Update Verification endpoint.
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
        #   Current verification state. `not_started` before any session has been created;
        #   `pending` while a session is in progress; `action_required` when items in
        #   `requested_information` need answers before review can continue; `approved` once
        #   verification succeeds; `rejected` if it fails. Call the Create Verification
        #   endpoint again to start a new session.
        #
        #   @return [Symbol, WhopSDK::Models::VerificationListResponse::Data::Status, nil]
        optional :status, enum: -> { WhopSDK::Models::VerificationListResponse::Data::Status }

        # @!attribute updated_at
        #   When the verification profile was last updated, as an ISO 8601 timestamp.
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!method initialize(id: nil, address: nil, business_name: nil, business_structure: nil, country: nil, created_at: nil, date_of_birth: nil, first_name: nil, kind: nil, last_name: nil, requested_information: nil, required_documents: nil, session_url: nil, status: nil, updated_at: nil)
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
        #   @param first_name [String, nil]
        #
        #   @param kind [Symbol, WhopSDK::Models::VerificationListResponse::Data::Kind]
        #
        #   @param last_name [String, nil]
        #
        #   @param requested_information [Array<WhopSDK::Models::VerificationListResponse::Data::RequestedInformation>] Fields or documents Whop still needs before review can continue. Submit answers
        #
        #   @param required_documents [Array<WhopSDK::Models::VerificationListResponse::Data::RequiredDocument>] Documents for a document-upload verification and their progress. Present only on
        #
        #   @param session_url [String, nil] Hosted verification session URL for the user to complete identity checks. Expire
        #
        #   @param status [Symbol, WhopSDK::Models::VerificationListResponse::Data::Status] Current verification state. `not_started` before any session has been created; `
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
          #   Requested information item ID, prefixed `inrqi_`. Include this ID when
          #   submitting an answer.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute description
          #   Additional instructions for this requested item, or `null`.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute error_message
          #   Reason a previously submitted value was rejected. `null` if no submitted value
          #   has been rejected.
          #
          #   @return [String, nil]
          optional :error_message, String, nil?: true

          # @!attribute field
          #   Stable field key, such as `ssn` or `business_description`.
          #
          #   @return [String, nil]
          optional :field, String

          # @!attribute label
          #   Human-readable label for the field, such as `Social Security Number`.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute options
          #   Allowed values for a `select` field (e.g. account_type, business_structure) —
          #   the submitted value must be one of these; empty for other types.
          #
          #   @return [Array<String>, nil]
          optional :options, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute requested_files
          #   Document upload slots for this item. Present when `type` is `files`; upload one
          #   file for each required slot and include the slot's `category` when submitting
          #   the answer.
          #
          #   @return [Array<WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::RequestedFile>, nil]
          optional :requested_files,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::RequestedFile] }

          # @!attribute type
          #   Input type expected for this item: `text`, `date`, `phone`, `address`, `files`,
          #   or `select`.
          #
          #   @return [String, nil]
          optional :type, String, nil?: true

          # @!method initialize(id: nil, description: nil, error_message: nil, field: nil, label: nil, options: nil, requested_files: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::VerificationListResponse::Data::RequestedInformation} for more
          #   details.
          #
          #   @param id [String] Requested information item ID, prefixed `inrqi_`. Include this ID when submittin
          #
          #   @param description [String, nil] Additional instructions for this requested item, or `null`.
          #
          #   @param error_message [String, nil] Reason a previously submitted value was rejected. `null` if no submitted value h
          #
          #   @param field [String] Stable field key, such as `ssn` or `business_description`.
          #
          #   @param label [String] Human-readable label for the field, such as `Social Security Number`.
          #
          #   @param options [Array<String>] Allowed values for a `select` field (e.g. account_type, business_structure) — th
          #
          #   @param requested_files [Array<WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::RequestedFile>] Document upload slots for this item. Present when `type` is `files`; upload one
          #
          #   @param type [String, nil] Input type expected for this item: `text`, `date`, `phone`, `address`, `files`,

          class RequestedFile < WhopSDK::Internal::Type::BaseModel
            # @!attribute category
            #   File category to include with the uploaded file so Whop can route the document
            #   correctly. `null` for a generic upload.
            #
            #   @return [String, nil]
            optional :category, String, nil?: true

            # @!attribute is_optional
            #   Whether this slot can be left empty.
            #
            #   @return [Boolean, nil]
            optional :is_optional, WhopSDK::Internal::Type::Boolean

            # @!attribute kind
            #   Specific document type requested, such as `Bank Statement`. `null` for standard
            #   identity and business document uploads.
            #
            #   @return [String, nil]
            optional :kind, String, nil?: true

            # @!attribute label
            #   Label for this upload slot, such as `Front of ID Document`.
            #
            #   @return [String, nil]
            optional :label, String

            # @!attribute multiple
            #   Whether this slot accepts more than one file.
            #
            #   @return [Boolean, nil]
            optional :multiple, WhopSDK::Internal::Type::Boolean

            # @!method initialize(category: nil, is_optional: nil, kind: nil, label: nil, multiple: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::RequestedFile}
            #   for more details.
            #
            #   @param category [String, nil] File category to include with the uploaded file so Whop can route the document c
            #
            #   @param is_optional [Boolean] Whether this slot can be left empty.
            #
            #   @param kind [String, nil] Specific document type requested, such as `Bank Statement`. `null` for standard
            #
            #   @param label [String] Label for this upload slot, such as `Front of ID Document`.
            #
            #   @param multiple [Boolean] Whether this slot accepts more than one file.
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

        # Current verification state. `not_started` before any session has been created;
        # `pending` while a session is in progress; `action_required` when items in
        # `requested_information` need answers before review can continue; `approved` once
        # verification succeeds; `rejected` if it fails. Call the Create Verification
        # endpoint again to start a new session.
        #
        # @see WhopSDK::Models::VerificationListResponse::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          NOT_STARTED = :not_started
          PENDING = :pending
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
