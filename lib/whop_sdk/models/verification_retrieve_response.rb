# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#retrieve
    class VerificationRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Verification profile ID, prefixed `idpf_`.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute address
      #   Address on the verification profile. `null` when no address is set.
      #
      #   @return [WhopSDK::Models::VerificationRetrieveResponse::Address, nil]
      optional :address, -> { WhopSDK::Models::VerificationRetrieveResponse::Address }, nil?: true

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
      #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::Kind, nil]
      optional :kind, enum: -> { WhopSDK::Models::VerificationRetrieveResponse::Kind }

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
      #   @return [Array<WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation>, nil]
      optional :requested_information,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation] }

      # @!attribute required_documents
      #   Documents for a document-upload verification and their progress. Present only on
      #   verifications created by sending `documents`. `pending_upload` documents were
      #   not accepted yet — send the full set again with another Create Verification
      #   call.
      #
      #   @return [Array<WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument>, nil]
      optional :required_documents,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument] }

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
      #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::Status, nil]
      optional :status, enum: -> { WhopSDK::Models::VerificationRetrieveResponse::Status }

      # @!attribute updated_at
      #   When the verification profile was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!method initialize(id: nil, address: nil, business_name: nil, business_structure: nil, country: nil, created_at: nil, date_of_birth: nil, email: nil, first_name: nil, kind: nil, last_name: nil, phone: nil, requested_information: nil, required_documents: nil, session_url: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::VerificationRetrieveResponse} for more details.
      #
      #   @param id [String] Verification profile ID, prefixed `idpf_`.
      #
      #   @param address [WhopSDK::Models::VerificationRetrieveResponse::Address, nil] Address on the verification profile. `null` when no address is set.
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
      #   @param kind [Symbol, WhopSDK::Models::VerificationRetrieveResponse::Kind]
      #
      #   @param last_name [String, nil]
      #
      #   @param phone [String, nil] Phone number on the verification profile.
      #
      #   @param requested_information [Array<WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation>] What Whop still needs before review can continue — one requirement per entry. An
      #
      #   @param required_documents [Array<WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument>] Documents for a document-upload verification and their progress. Present only on
      #
      #   @param session_url [String, nil] Hosted verification session URL for the user to complete identity checks. Expire
      #
      #   @param status [Symbol, WhopSDK::Models::VerificationRetrieveResponse::Status] Current verification state. `not_started` before any session exists; `pending` w
      #
      #   @param updated_at [String] When the verification profile was last updated, as an ISO 8601 timestamp.

      # @see WhopSDK::Models::VerificationRetrieveResponse#address
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

      # @see WhopSDK::Models::VerificationRetrieveResponse#kind
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
        #   `text_with_files` (send `value` and optional `files`), `address` (send
        #   `address`), or `liveness` (open `action_url`, then send `value` as `true` after
        #   completion).
        #
        #   @return [String]
        required :type, String

        # @!attribute action_url
        #   URL for a related action, such as completing liveness verification or viewing a
        #   payment. Absent when no action is available.
        #
        #   @return [String, nil]
        optional :action_url, String

        # @!attribute details_label
        #   Follow-up prompt shown with this requirement.
        #
        #   @return [String, nil]
        optional :details_label, String

        # @!attribute details_required
        #   Whether the follow-up response is required when visible.
        #
        #   @return [Boolean, nil]
        optional :details_required, WhopSDK::Internal::Type::Boolean

        # @!attribute details_visible_for
        #   Selected option values that make the follow-up prompt visible.
        #
        #   @return [Array<String>, nil]
        optional :details_visible_for, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute errors
        #   Present after a rejected submission.
        #
        #   @return [Array<WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::Error>, nil]
        optional :errors,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::Error] }

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

        # @!attribute response_type
        #   Optional native input format for a text response.
        #
        #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::ResponseType, nil]
        optional :response_type,
                 enum: -> { WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::ResponseType }

        # @!attribute selection_mode
        #   Whether a question with `options` accepts one value or multiple values.
        #
        #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SelectionMode, nil]
        optional :selection_mode,
                 enum: -> { WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SelectionMode }

        # @!attribute supporting_documents
        #   Documents supplied with the requirement for context.
        #
        #   @return [Array<WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument>, nil]
        optional :supporting_documents,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument] }

        # @!attribute supporting_files_explanation_allowed
        #   Whether a written explanation may replace required supporting files.
        #
        #   @return [Boolean, nil]
        optional :supporting_files_explanation_allowed, WhopSDK::Internal::Type::Boolean

        # @!attribute supporting_files_required
        #   Whether this requirement also needs supporting files.
        #
        #   @return [Boolean, nil]
        optional :supporting_files_required, WhopSDK::Internal::Type::Boolean

        # @!attribute supporting_files_visible_for
        #   Selected option values that make the supporting-file input visible.
        #
        #   @return [Array<String>, nil]
        optional :supporting_files_visible_for, WhopSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, label:, requirement:, type:, action_url: nil, details_label: nil, details_required: nil, details_visible_for: nil, errors: nil, optional: nil, options: nil, response_type: nil, selection_mode: nil, supporting_documents: nil, supporting_files_explanation_allowed: nil, supporting_files_required: nil, supporting_files_visible_for: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation} for more
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
        #   @param action_url [String] URL for a related action, such as completing liveness verification or viewing a
        #
        #   @param details_label [String] Follow-up prompt shown with this requirement.
        #
        #   @param details_required [Boolean] Whether the follow-up response is required when visible.
        #
        #   @param details_visible_for [Array<String>] Selected option values that make the follow-up prompt visible.
        #
        #   @param errors [Array<WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::Error>] Present after a rejected submission.
        #
        #   @param optional [Boolean] `true` when the item can be skipped.
        #
        #   @param options [Array<String>] The values `value` may take on a `select` item. On an `id_document` item these a
        #
        #   @param response_type [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::ResponseType] Optional native input format for a text response.
        #
        #   @param selection_mode [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SelectionMode] Whether a question with `options` accepts one value or multiple values.
        #
        #   @param supporting_documents [Array<WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument>] Documents supplied with the requirement for context.
        #
        #   @param supporting_files_explanation_allowed [Boolean] Whether a written explanation may replace required supporting files.
        #
        #   @param supporting_files_required [Boolean] Whether this requirement also needs supporting files.
        #
        #   @param supporting_files_visible_for [Array<String>] Selected option values that make the supporting-file input visible.

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

        # Optional native input format for a text response.
        #
        # @see WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation#response_type
        module ResponseType
          extend WhopSDK::Internal::Type::Enum

          YES_NO = :yes_no
          YES_NO_NA = :yes_no_na
          DATE = :date
          URL = :url
          NUMBER = :number
          TEL = :tel

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether a question with `options` accepts one value or multiple values.
        #
        # @see WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation#selection_mode
        module SelectionMode
          extend WhopSDK::Internal::Type::Enum

          SINGLE = :single
          MULTIPLE = :multiple

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class SupportingDocument < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The file's ID, prefixed `file_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The file's MIME type, e.g. `application/pdf`.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute created_at
          #   When the file was created, as an ISO 8601 timestamp.
          #
          #   @return [String]
          required :created_at, String

          # @!attribute filename
          #   The original filename, including its extension.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute object
          #   The type of this object, always `file`.
          #
          #   @return [String]
          required :object, String

          # @!attribute size
          #   The file size in bytes. `null` until the upload has finished.
          #
          #   @return [Integer, nil]
          required :size, Integer, nil?: true

          # @!attribute upload_status
          #   Where the file is in its upload lifecycle.
          #
          #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::UploadStatus]
          required :upload_status,
                   enum: -> { WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::UploadStatus }

          # @!attribute url
          #   A URL to download the file: a permanent CDN URL for public files, a signed
          #   expiring URL for private ones. `null` until the upload has finished.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!attribute visibility
          #   `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #   expiring URL.
          #
          #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::Visibility]
          required :visibility,
                   enum: -> { WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::Visibility }

          # @!attribute multipart_chunk_size
          #   The byte size each part (except the last) must be. Present only on create, and
          #   only for multipart uploads.
          #
          #   @return [Integer, nil]
          optional :multipart_chunk_size, Integer, nil?: true

          # @!attribute multipart_upload_id
          #   The ID of the multipart upload, passed back to `complete`. Present only on
          #   create, and only for multipart uploads.
          #
          #   @return [String, nil]
          optional :multipart_upload_id, String, nil?: true

          # @!attribute multipart_upload_urls
          #
          #   @return [Array<WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> do
                     WhopSDK::Internal::Type::ArrayOf[
                       WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::MultipartUploadURL
                     ]
                   end,
                   nil?: true

          # @!attribute upload_headers
          #   Headers to send with the upload PUT. Present only on create.
          #
          #   @return [Object, nil]
          optional :upload_headers, WhopSDK::Internal::Type::Unknown

          # @!attribute upload_url
          #   Presigned URL to PUT the file's bytes to. Present only on create, and only for
          #   single-part uploads.
          #
          #   @return [String, nil]
          optional :upload_url, String, nil?: true

          # @!method initialize(id:, content_type:, created_at:, filename:, object:, size:, upload_status:, url:, visibility:, multipart_chunk_size: nil, multipart_upload_id: nil, multipart_upload_urls: nil, upload_headers: nil, upload_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument}
          #   for more details.
          #
          #   @param id [String] The file's ID, prefixed `file_`.
          #
          #   @param content_type [String, nil] The file's MIME type, e.g. `application/pdf`.
          #
          #   @param created_at [String] When the file was created, as an ISO 8601 timestamp.
          #
          #   @param filename [String, nil] The original filename, including its extension.
          #
          #   @param object [String] The type of this object, always `file`.
          #
          #   @param size [Integer, nil] The file size in bytes. `null` until the upload has finished.
          #
          #   @param upload_status [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument#upload_status
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            PENDING = :pending
            PROCESSING = :processing
            READY = :ready
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          #
          # @see WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation::SupportingDocument#visibility
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            PUBLIC = :public
            PRIVATE = :private

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            # @!attribute part_number
            #   The 1-based index of this part within the multipart upload.
            #
            #   @return [Integer]
            required :part_number, Integer

            # @!attribute url
            #   The presigned URL to PUT this part's bytes to.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(part_number:, url:)
            #   The presigned URL for each part. Present only on create, and only for multipart
            #   uploads.
            #
            #   @param part_number [Integer] The 1-based index of this part within the multipart upload.
            #
            #   @param url [String] The presigned URL to PUT this part's bytes to.
          end
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
        #   @return [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument::Status, nil]
        optional :status, enum: -> { WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument::Status }

        # @!method initialize(document: nil, rejection_reason: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument} for more
        #   details.
        #
        #   @param document [String] Document slot key, such as `id_card_front`, `id_card_back`, or `selfie`.
        #
        #   @param rejection_reason [String, nil] Why the previous submission was rejected, when the provider requested new docume
        #
        #   @param status [Symbol, WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument::Status] `pending_upload` until the document has been relayed for review; `submitted` aft

        # `pending_upload` until the document has been relayed for review; `submitted`
        # afterwards.
        #
        # @see WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument#status
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
      # @see WhopSDK::Models::VerificationRetrieveResponse#status
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
