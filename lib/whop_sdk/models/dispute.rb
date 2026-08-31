# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Disputes#retrieve
    class Dispute < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Dispute ID, prefixed `dspt_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The account the dispute was filed against, prefixed `biz_`.
      #
      #   @return [String, nil]
      required :account_id, String, nil?: true

      # @!attribute amount
      #   The disputed amount, in whole units of `currency`.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute buyer
      #   The customer who filed the dispute.
      #
      #   @return [WhopSDK::Models::Dispute::Buyer, nil]
      required :buyer, -> { WhopSDK::Dispute::Buyer }, nil?: true

      # @!attribute created_at
      #   When the dispute was opened, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   Three-letter ISO currency code of the disputed amount.
      #
      #   @return [String]
      required :currency, String

      # @!attribute evidence
      #   The evidence packet sent to the processor to contest the dispute.
      #
      #   @return [WhopSDK::Models::Dispute::Evidence]
      required :evidence, -> { WhopSDK::Dispute::Evidence }

      # @!attribute evidence_due_at
      #   The deadline to submit evidence, as an ISO 8601 timestamp. Whop reserves the
      #   last 24 hours before the processor's own cutoff to forward the submission.
      #
      #   @return [String, nil]
      required :evidence_due_at, String, nil?: true

      # @!attribute evidence_editable
      #   Whether `evidence` can still be changed and submitted.
      #
      #   @return [Boolean]
      required :evidence_editable, WhopSDK::Internal::Type::Boolean

      # @!attribute evidence_locked_reason
      #   Why evidence can no longer be edited. `null` while `evidence_editable` is true.
      #
      #   @return [Symbol, WhopSDK::Models::Dispute::EvidenceLockedReason, nil]
      required :evidence_locked_reason, enum: -> { WhopSDK::Dispute::EvidenceLockedReason }, nil?: true

      # @!attribute evidence_submitted_at
      #   When the evidence was submitted to the processor, as an ISO 8601 timestamp.
      #
      #   @return [String, nil]
      required :evidence_submitted_at, String, nil?: true

      # @!attribute generated_response_attachment
      #   The AI-generated representment document filed with the processor on the seller's
      #   behalf, once ready. Null until generation completes, and for disputes not using
      #   Whop Dispute Fighter.
      #
      #   @return [WhopSDK::Models::Dispute::GeneratedResponseAttachment, nil]
      required :generated_response_attachment,
               -> {
                 WhopSDK::Dispute::GeneratedResponseAttachment
               },
               nil?: true

      # @!attribute inquiry
      #   Whether this is a pre-dispute inquiry rather than a formal chargeback. Inquiries
      #   follow the same lifecycle but move no funds unless one escalates.
      #
      #   @return [Boolean]
      required :inquiry, WhopSDK::Internal::Type::Boolean

      # @!attribute issuer_comments
      #
      #   @return [Array<WhopSDK::Models::Dispute::IssuerComment>]
      required :issuer_comments, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Dispute::IssuerComment] }

      # @!attribute payment
      #   The payment being disputed.
      #
      #   @return [WhopSDK::Models::Dispute::Payment, nil]
      required :payment, -> { WhopSDK::Dispute::Payment }, nil?: true

      # @!attribute plan_id
      #   The plan the disputed payment was made on, prefixed `plan_`.
      #
      #   @return [String, nil]
      required :plan_id, String, nil?: true

      # @!attribute product_id
      #   The product the disputed payment was for, prefixed `prod_`.
      #
      #   @return [String, nil]
      required :product_id, String, nil?: true

      # @!attribute rapid_dispute_resolution
      #   Whether Visa Rapid Dispute Resolution settled this automatically. These refund
      #   the customer without an evidence round.
      #
      #   @return [Boolean]
      required :rapid_dispute_resolution, WhopSDK::Internal::Type::Boolean

      # @!attribute reason
      #   Why the customer says they are disputing, normalized across card networks.
      #   `other` covers a code Whop has not categorized yet — read `reason_code` for the
      #   raw value.
      #
      #   @return [Symbol, WhopSDK::Models::Dispute::Reason]
      required :reason, enum: -> { WhopSDK::Dispute::Reason }

      # @!attribute reason_code
      #   The raw card-network or processor reason code, such as `10.4`.
      #
      #   @return [String, nil]
      required :reason_code, String, nil?: true

      # @!attribute status
      #   Where the dispute stands. `needs_response` is awaiting evidence, `under_review`
      #   is with the processor, `won` returned the funds to the seller, `lost` returned
      #   them to the customer, and `closed` ended without a ruling. A dispute past its
      #   `evidence_due_at` reports `under_review` — the window to respond has closed.
      #
      #   @return [Symbol, WhopSDK::Models::Dispute::Status]
      required :status, enum: -> { WhopSDK::Dispute::Status }

      # @!attribute updated_at
      #   When the dispute was last changed, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, account_id:, amount:, buyer:, created_at:, currency:, evidence:, evidence_due_at:, evidence_editable:, evidence_locked_reason:, evidence_submitted_at:, generated_response_attachment:, inquiry:, issuer_comments:, payment:, plan_id:, product_id:, rapid_dispute_resolution:, reason:, reason_code:, status:, updated_at:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Dispute}
      #   for more details.
      #
      #   @param id [String] Dispute ID, prefixed `dspt_`.
      #
      #   @param account_id [String, nil] The account the dispute was filed against, prefixed `biz_`.
      #
      #   @param amount [Float] The disputed amount, in whole units of `currency`.
      #
      #   @param buyer [WhopSDK::Models::Dispute::Buyer, nil] The customer who filed the dispute.
      #
      #   @param created_at [String] When the dispute was opened, as an ISO 8601 timestamp.
      #
      #   @param currency [String] Three-letter ISO currency code of the disputed amount.
      #
      #   @param evidence [WhopSDK::Models::Dispute::Evidence] The evidence packet sent to the processor to contest the dispute.
      #
      #   @param evidence_due_at [String, nil] The deadline to submit evidence, as an ISO 8601 timestamp. Whop reserves the las
      #
      #   @param evidence_editable [Boolean] Whether `evidence` can still be changed and submitted.
      #
      #   @param evidence_locked_reason [Symbol, WhopSDK::Models::Dispute::EvidenceLockedReason, nil] Why evidence can no longer be edited. `null` while `evidence_editable` is true.
      #
      #   @param evidence_submitted_at [String, nil] When the evidence was submitted to the processor, as an ISO 8601 timestamp.
      #
      #   @param generated_response_attachment [WhopSDK::Models::Dispute::GeneratedResponseAttachment, nil] The AI-generated representment document filed with the processor on the seller's
      #
      #   @param inquiry [Boolean] Whether this is a pre-dispute inquiry rather than a formal chargeback. Inquiries
      #
      #   @param issuer_comments [Array<WhopSDK::Models::Dispute::IssuerComment>]
      #
      #   @param payment [WhopSDK::Models::Dispute::Payment, nil] The payment being disputed.
      #
      #   @param plan_id [String, nil] The plan the disputed payment was made on, prefixed `plan_`.
      #
      #   @param product_id [String, nil] The product the disputed payment was for, prefixed `prod_`.
      #
      #   @param rapid_dispute_resolution [Boolean] Whether Visa Rapid Dispute Resolution settled this automatically. These refund t
      #
      #   @param reason [Symbol, WhopSDK::Models::Dispute::Reason] Why the customer says they are disputing, normalized across card networks. `othe
      #
      #   @param reason_code [String, nil] The raw card-network or processor reason code, such as `10.4`.
      #
      #   @param status [Symbol, WhopSDK::Models::Dispute::Status] Where the dispute stands. `needs_response` is awaiting evidence, `under_review`
      #
      #   @param updated_at [String] When the dispute was last changed, as an ISO 8601 timestamp.

      # @see WhopSDK::Models::Dispute#buyer
      class Buyer < WhopSDK::Internal::Type::BaseModel
        # @!attribute email
        #   The customer's email address. Requires the `member:email:read` scope; `null`
        #   without it.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute member_id
        #   The customer's member row on the account, prefixed `mem_`.
        #
        #   @return [String, nil]
        required :member_id, String, nil?: true

        # @!attribute name
        #   The customer's display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute user_id
        #   The customer's user ID, prefixed `user_`. `null` for a guest checkout.
        #
        #   @return [String, nil]
        required :user_id, String, nil?: true

        # @!attribute username
        #   The customer's Whop username.
        #
        #   @return [String, nil]
        required :username, String, nil?: true

        # @!method initialize(email:, member_id:, name:, user_id:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::Buyer} for more details.
        #
        #   The customer who filed the dispute.
        #
        #   @param email [String, nil] The customer's email address. Requires the `member:email:read` scope; `null` wit
        #
        #   @param member_id [String, nil] The customer's member row on the account, prefixed `mem_`.
        #
        #   @param name [String, nil] The customer's display name.
        #
        #   @param user_id [String, nil] The customer's user ID, prefixed `user_`. `null` for a guest checkout.
        #
        #   @param username [String, nil] The customer's Whop username.
      end

      # @see WhopSDK::Models::Dispute#evidence
      class Evidence < WhopSDK::Internal::Type::BaseModel
        # @!attribute access_activity_log
        #   Log of the customer's access to the product, such as sign-in or download
        #   activity.
        #
        #   @return [String, nil]
        required :access_activity_log, String, nil?: true

        # @!attribute billing_address
        #   The billing address the customer provided at checkout.
        #
        #   @return [String, nil]
        required :billing_address, String, nil?: true

        # @!attribute cancellation_policy_attachment
        #   The cancellation policy document. Falls back to Whop's platform policy when the
        #   seller has not uploaded their own.
        #
        #   @return [WhopSDK::Models::Dispute::Evidence::CancellationPolicyAttachment, nil]
        required :cancellation_policy_attachment,
                 -> { WhopSDK::Dispute::Evidence::CancellationPolicyAttachment },
                 nil?: true

        # @!attribute cancellation_policy_disclosure
        #   How the cancellation policy was shown to the customer before purchase.
        #
        #   @return [String, nil]
        required :cancellation_policy_disclosure, String, nil?: true

        # @!attribute customer_communication_attachment
        #   Correspondence with the customer, or proof they used the product.
        #
        #   @return [WhopSDK::Models::Dispute::Evidence::CustomerCommunicationAttachment, nil]
        required :customer_communication_attachment,
                 -> { WhopSDK::Dispute::Evidence::CustomerCommunicationAttachment },
                 nil?: true

        # @!attribute customer_email_address
        #   The email address the customer used at checkout.
        #
        #   @return [String, nil]
        required :customer_email_address, String, nil?: true

        # @!attribute customer_name
        #   The customer's name as given at checkout.
        #
        #   @return [String, nil]
        required :customer_name, String, nil?: true

        # @!attribute documents
        #
        #   @return [Array<WhopSDK::Models::Dispute::Evidence::Document>]
        required :documents, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Dispute::Evidence::Document] }

        # @!attribute notes
        #   Any additional context for the processor reviewing the dispute.
        #
        #   @return [String, nil]
        required :notes, String, nil?: true

        # @!attribute product_description
        #   What the customer purchased, in the seller's own words.
        #
        #   @return [String, nil]
        required :product_description, String, nil?: true

        # @!attribute refund_policy_attachment
        #   The refund policy document. Falls back to Whop's platform policy when the seller
        #   has not uploaded their own.
        #
        #   @return [WhopSDK::Models::Dispute::Evidence::RefundPolicyAttachment, nil]
        required :refund_policy_attachment,
                 -> {
                   WhopSDK::Dispute::Evidence::RefundPolicyAttachment
                 },
                 nil?: true

        # @!attribute refund_policy_disclosure
        #   How the refund policy was shown to the customer before purchase.
        #
        #   @return [String, nil]
        required :refund_policy_disclosure, String, nil?: true

        # @!attribute refund_refusal_explanation
        #   Why a refund was refused, when one was requested and denied.
        #
        #   @return [String, nil]
        required :refund_refusal_explanation, String, nil?: true

        # @!attribute service_date
        #   When the product or service was delivered.
        #
        #   @return [String, nil]
        required :service_date, String, nil?: true

        # @!attribute uncategorized_attachment
        #   Supporting evidence that does not fit the other categories.
        #
        #   @return [WhopSDK::Models::Dispute::Evidence::UncategorizedAttachment, nil]
        required :uncategorized_attachment,
                 -> {
                   WhopSDK::Dispute::Evidence::UncategorizedAttachment
                 },
                 nil?: true

        # @!method initialize(access_activity_log:, billing_address:, cancellation_policy_attachment:, cancellation_policy_disclosure:, customer_communication_attachment:, customer_email_address:, customer_name:, documents:, notes:, product_description:, refund_policy_attachment:, refund_policy_disclosure:, refund_refusal_explanation:, service_date:, uncategorized_attachment:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::Evidence} for more details.
        #
        #   The evidence packet sent to the processor to contest the dispute.
        #
        #   @param access_activity_log [String, nil] Log of the customer's access to the product, such as sign-in or download activit
        #
        #   @param billing_address [String, nil] The billing address the customer provided at checkout.
        #
        #   @param cancellation_policy_attachment [WhopSDK::Models::Dispute::Evidence::CancellationPolicyAttachment, nil] The cancellation policy document. Falls back to Whop's platform policy when the
        #
        #   @param cancellation_policy_disclosure [String, nil] How the cancellation policy was shown to the customer before purchase.
        #
        #   @param customer_communication_attachment [WhopSDK::Models::Dispute::Evidence::CustomerCommunicationAttachment, nil] Correspondence with the customer, or proof they used the product.
        #
        #   @param customer_email_address [String, nil] The email address the customer used at checkout.
        #
        #   @param customer_name [String, nil] The customer's name as given at checkout.
        #
        #   @param documents [Array<WhopSDK::Models::Dispute::Evidence::Document>]
        #
        #   @param notes [String, nil] Any additional context for the processor reviewing the dispute.
        #
        #   @param product_description [String, nil] What the customer purchased, in the seller's own words.
        #
        #   @param refund_policy_attachment [WhopSDK::Models::Dispute::Evidence::RefundPolicyAttachment, nil] The refund policy document. Falls back to Whop's platform policy when the seller
        #
        #   @param refund_policy_disclosure [String, nil] How the refund policy was shown to the customer before purchase.
        #
        #   @param refund_refusal_explanation [String, nil] Why a refund was refused, when one was requested and denied.
        #
        #   @param service_date [String, nil] When the product or service was delivered.
        #
        #   @param uncategorized_attachment [WhopSDK::Models::Dispute::Evidence::UncategorizedAttachment, nil] Supporting evidence that does not fit the other categories.

        # @see WhopSDK::Models::Dispute::Evidence#cancellation_policy_attachment
        class CancellationPolicyAttachment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          #   file.
          #
          #   @return [String, nil]
          required :id, String, nil?: true

          # @!attribute content_type
          #   The uploaded file's MIME type.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The uploaded file's name.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute platform
          #   Whether this is Whop's own hosted policy, standing in because the seller
          #   uploaded none. Sending it back on a PATCH changes nothing.
          #
          #   @return [Boolean]
          required :platform, WhopSDK::Internal::Type::Boolean

          # @!attribute url
          #   A URL to download the attachment.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, platform:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Dispute::Evidence::CancellationPolicyAttachment} for more
          #   details.
          #
          #   The cancellation policy document. Falls back to Whop's platform policy when the
          #   seller has not uploaded their own.
          #
          #   @param id [String, nil] The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded f
          #
          #   @param content_type [String, nil] The uploaded file's MIME type.
          #
          #   @param filename [String, nil] The uploaded file's name.
          #
          #   @param platform [Boolean] Whether this is Whop's own hosted policy, standing in because the seller uploade
          #
          #   @param url [String, nil] A URL to download the attachment.
        end

        # @see WhopSDK::Models::Dispute::Evidence#customer_communication_attachment
        class CustomerCommunicationAttachment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          #   file.
          #
          #   @return [String, nil]
          required :id, String, nil?: true

          # @!attribute content_type
          #   The uploaded file's MIME type.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The uploaded file's name.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute platform
          #   Whether this is Whop's own hosted policy, standing in because the seller
          #   uploaded none. Sending it back on a PATCH changes nothing.
          #
          #   @return [Boolean]
          required :platform, WhopSDK::Internal::Type::Boolean

          # @!attribute url
          #   A URL to download the attachment.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, platform:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Dispute::Evidence::CustomerCommunicationAttachment} for more
          #   details.
          #
          #   Correspondence with the customer, or proof they used the product.
          #
          #   @param id [String, nil] The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded f
          #
          #   @param content_type [String, nil] The uploaded file's MIME type.
          #
          #   @param filename [String, nil] The uploaded file's name.
          #
          #   @param platform [Boolean] Whether this is Whop's own hosted policy, standing in because the seller uploade
          #
          #   @param url [String, nil] A URL to download the attachment.
        end

        class Document < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The file's ID, prefixed `file_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The uploaded file's MIME type. Uploads are restricted to the types the processor
          #   accepts.
          #
          #   @return [Symbol, WhopSDK::Models::Dispute::Evidence::Document::ContentType, nil]
          required :content_type, enum: -> { WhopSDK::Dispute::Evidence::Document::ContentType }, nil?: true

          # @!attribute created_at
          #   When the file was created, as an ISO 8601 timestamp.
          #
          #   @return [String]
          required :created_at, String

          # @!attribute document_type
          #   What kind of evidence the document is.
          #
          #   @return [Symbol, WhopSDK::Models::Dispute::Evidence::Document::DocumentType]
          required :document_type, enum: -> { WhopSDK::Dispute::Evidence::Document::DocumentType }

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
          #   @return [Symbol, WhopSDK::Models::Dispute::Evidence::Document::UploadStatus]
          required :upload_status, enum: -> { WhopSDK::Dispute::Evidence::Document::UploadStatus }

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
          #   @return [Symbol, WhopSDK::Models::Dispute::Evidence::Document::Visibility]
          required :visibility, enum: -> { WhopSDK::Dispute::Evidence::Document::Visibility }

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
          #   @return [Array<WhopSDK::Models::Dispute::Evidence::Document::MultipartUploadURL>, nil]
          optional :multipart_upload_urls,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::Dispute::Evidence::Document::MultipartUploadURL]
                   },
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

          # @!method initialize(id:, content_type:, created_at:, document_type:, filename:, object:, size:, upload_status:, url:, visibility:, multipart_chunk_size: nil, multipart_upload_id: nil, multipart_upload_urls: nil, upload_headers: nil, upload_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Dispute::Evidence::Document} for more details.
          #
          #   Additional evidence documents uploaded through
          #   `POST /disputes/{id}/upload_evidence`, beyond the four fixed slots. Each rides
          #   into the submitted packet under its `document_type`.
          #
          #   @param id [String] The file's ID, prefixed `file_`.
          #
          #   @param content_type [Symbol, WhopSDK::Models::Dispute::Evidence::Document::ContentType, nil] The uploaded file's MIME type. Uploads are restricted to the types the processor
          #
          #   @param created_at [String] When the file was created, as an ISO 8601 timestamp.
          #
          #   @param document_type [Symbol, WhopSDK::Models::Dispute::Evidence::Document::DocumentType] What kind of evidence the document is.
          #
          #   @param filename [String, nil] The original filename, including its extension.
          #
          #   @param object [String] The type of this object, always `file`.
          #
          #   @param size [Integer, nil] The file size in bytes. `null` until the upload has finished.
          #
          #   @param upload_status [Symbol, WhopSDK::Models::Dispute::Evidence::Document::UploadStatus] Where the file is in its upload lifecycle.
          #
          #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
          #
          #   @param visibility [Symbol, WhopSDK::Models::Dispute::Evidence::Document::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
          #
          #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
          #
          #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
          #
          #   @param multipart_upload_urls [Array<WhopSDK::Models::Dispute::Evidence::Document::MultipartUploadURL>, nil]
          #
          #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
          #
          #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

          # The uploaded file's MIME type. Uploads are restricted to the types the processor
          # accepts.
          #
          # @see WhopSDK::Models::Dispute::Evidence::Document#content_type
          module ContentType
            extend WhopSDK::Internal::Type::Enum

            APPLICATION_PDF = :"application/pdf"
            APPLICATION_JSON = :"application/json"
            IMAGE_JPEG = :"image/jpeg"
            IMAGE_PNG = :"image/png"
            IMAGE_WEBP = :"image/webp"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # What kind of evidence the document is.
          #
          # @see WhopSDK::Models::Dispute::Evidence::Document#document_type
          module DocumentType
            extend WhopSDK::Internal::Type::Enum

            RETURN_POLICY = :return_policy
            SHIPPING_POLICY = :shipping_policy
            PHYSICAL_FULFILLMENT = :physical_fulfillment
            CUSTOMER_ORDER_HISTORY = :customer_order_history
            PRODUCT_IMAGE = :product_image
            PRIOR_TRANSACTIONS = :prior_transactions
            CUSTOMER_SESSION = :customer_session
            DIGITAL_FULFILLMENT = :digital_fulfillment
            SUBSCRIPTION = :subscription

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Where the file is in its upload lifecycle.
          #
          # @see WhopSDK::Models::Dispute::Evidence::Document#upload_status
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
          # @see WhopSDK::Models::Dispute::Evidence::Document#visibility
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

        # @see WhopSDK::Models::Dispute::Evidence#refund_policy_attachment
        class RefundPolicyAttachment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          #   file.
          #
          #   @return [String, nil]
          required :id, String, nil?: true

          # @!attribute content_type
          #   The uploaded file's MIME type.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The uploaded file's name.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute platform
          #   Whether this is Whop's own hosted policy, standing in because the seller
          #   uploaded none. Sending it back on a PATCH changes nothing.
          #
          #   @return [Boolean]
          required :platform, WhopSDK::Internal::Type::Boolean

          # @!attribute url
          #   A URL to download the attachment.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, platform:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Dispute::Evidence::RefundPolicyAttachment} for more details.
          #
          #   The refund policy document. Falls back to Whop's platform policy when the seller
          #   has not uploaded their own.
          #
          #   @param id [String, nil] The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded f
          #
          #   @param content_type [String, nil] The uploaded file's MIME type.
          #
          #   @param filename [String, nil] The uploaded file's name.
          #
          #   @param platform [Boolean] Whether this is Whop's own hosted policy, standing in because the seller uploade
          #
          #   @param url [String, nil] A URL to download the attachment.
        end

        # @see WhopSDK::Models::Dispute::Evidence#uncategorized_attachment
        class UncategorizedAttachment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          #   file.
          #
          #   @return [String, nil]
          required :id, String, nil?: true

          # @!attribute content_type
          #   The uploaded file's MIME type.
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The uploaded file's name.
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute platform
          #   Whether this is Whop's own hosted policy, standing in because the seller
          #   uploaded none. Sending it back on a PATCH changes nothing.
          #
          #   @return [Boolean]
          required :platform, WhopSDK::Internal::Type::Boolean

          # @!attribute url
          #   A URL to download the attachment.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, platform:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Dispute::Evidence::UncategorizedAttachment} for more details.
          #
          #   Supporting evidence that does not fit the other categories.
          #
          #   @param id [String, nil] The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded f
          #
          #   @param content_type [String, nil] The uploaded file's MIME type.
          #
          #   @param filename [String, nil] The uploaded file's name.
          #
          #   @param platform [Boolean] Whether this is Whop's own hosted policy, standing in because the seller uploade
          #
          #   @param url [String, nil] A URL to download the attachment.
        end
      end

      # Why evidence can no longer be edited. `null` while `evidence_editable` is true.
      #
      # @see WhopSDK::Models::Dispute#evidence_locked_reason
      module EvidenceLockedReason
        extend WhopSDK::Internal::Type::Enum

        SUBMITTED = :submitted
        RESPONSE_WINDOW_CLOSED = :response_window_closed
        NOT_CONTESTABLE = :not_contestable

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::Dispute#generated_response_attachment
      class GeneratedResponseAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
        #   file.
        #
        #   @return [String, nil]
        required :id, String, nil?: true

        # @!attribute content_type
        #   The uploaded file's MIME type.
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The uploaded file's name.
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute platform
        #   Whether this is Whop's own hosted policy, standing in because the seller
        #   uploaded none. Sending it back on a PATCH changes nothing.
        #
        #   @return [Boolean]
        required :platform, WhopSDK::Internal::Type::Boolean

        # @!attribute url
        #   A URL to download the attachment.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, platform:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::GeneratedResponseAttachment} for more details.
        #
        #   The AI-generated representment document filed with the processor on the seller's
        #   behalf, once ready. Null until generation completes, and for disputes not using
        #   Whop Dispute Fighter.
        #
        #   @param id [String, nil] The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded f
        #
        #   @param content_type [String, nil] The uploaded file's MIME type.
        #
        #   @param filename [String, nil] The uploaded file's name.
        #
        #   @param platform [Boolean] Whether this is Whop's own hosted policy, standing in because the seller uploade
        #
        #   @param url [String, nil] A URL to download the attachment.
      end

      class IssuerComment < WhopSDK::Internal::Type::BaseModel
        # @!attribute received_at
        #   When the comment was received, as an ISO 8601 timestamp.
        #
        #   @return [String, nil]
        required :received_at, String, nil?: true

        # @!attribute text
        #   What the issuer wrote, as received.
        #
        #   @return [String]
        required :text, String

        # @!method initialize(received_at:, text:)
        #   What the card issuer said when filing the dispute. Only populated when the
        #   issuer provides them, and listed in the order they were received.
        #
        #   @param received_at [String, nil] When the comment was received, as an ISO 8601 timestamp.
        #
        #   @param text [String] What the issuer wrote, as received.
      end

      # @see WhopSDK::Models::Dispute#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Payment ID, prefixed `pay_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   What the customer was charged, in whole units of the payment's currency.
        #
        #   @return [Float, nil]
        required :amount, Float, nil?: true

        # @!attribute card_brand
        #   Card brand, when the customer paid by card.
        #
        #   @return [String, nil]
        required :card_brand, String, nil?: true

        # @!attribute card_last4
        #   Last four digits of the card, when the customer paid by card.
        #
        #   @return [String, nil]
        required :card_last4, String, nil?: true

        # @!attribute created_at
        #   When the payment was made, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute currency
        #   Three-letter ISO currency code of the payment. Can differ from the dispute's
        #   currency when the processor settles in another currency.
        #
        #   @return [String, nil]
        required :currency, String, nil?: true

        # @!attribute payment_instrument
        #   The instrument this payment was made with, shaped for display: the method type,
        #   a buyer-facing name, the standard icon set, and the card facts when it was a
        #   card. Null when the payment names no method.
        #
        #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument, nil]
        required :payment_instrument, -> { WhopSDK::Dispute::Payment::PaymentInstrument }, nil?: true

        # @!attribute payment_method_type
        #   How the customer paid, such as `card` or `paypal`.
        #
        #   @return [String, nil]
        required :payment_method_type, String, nil?: true

        # @!attribute payment_processor
        #   The processor that handled the payment, such as `stripe`.
        #
        #   @return [String, nil]
        required :payment_processor, String, nil?: true

        # @!method initialize(id:, amount:, card_brand:, card_last4:, created_at:, currency:, payment_instrument:, payment_method_type:, payment_processor:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::Payment} for more details.
        #
        #   The payment being disputed.
        #
        #   @param id [String] Payment ID, prefixed `pay_`.
        #
        #   @param amount [Float, nil] What the customer was charged, in whole units of the payment's currency.
        #
        #   @param card_brand [String, nil] Card brand, when the customer paid by card.
        #
        #   @param card_last4 [String, nil] Last four digits of the card, when the customer paid by card.
        #
        #   @param created_at [String] When the payment was made, as an ISO 8601 timestamp.
        #
        #   @param currency [String, nil] Three-letter ISO currency code of the payment. Can differ from the dispute's cur
        #
        #   @param payment_instrument [WhopSDK::Models::Dispute::Payment::PaymentInstrument, nil] The instrument this payment was made with, shaped for display: the method type,
        #
        #   @param payment_method_type [String, nil] How the customer paid, such as `card` or `paypal`.
        #
        #   @param payment_processor [String, nil] The processor that handled the payment, such as `stripe`.

        # @see WhopSDK::Models::Dispute::Payment#payment_instrument
        class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   Card payments only: the card's network and last four.
          #
          #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Card, nil]
          required :card, -> { WhopSDK::Dispute::Payment::PaymentInstrument::Card }, nil?: true

          # @!attribute display_name
          #   Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
          #   method's own name ("Klarna").
          #
          #   @return [String]
          required :display_name, String

          # @!attribute icons
          #   The standard icon set: square and card shapes, each in light and dark colorways.
          #
          #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons]
          required :icons, -> { WhopSDK::Dispute::Payment::PaymentInstrument::Icons }

          # @!attribute installment_count
          #   Installment methods only: how many payments the charge splits into. Data, not
          #   copy — compose and translate the label client-side.
          #
          #   @return [Float, nil]
          required :installment_count, Float, nil?: true

          # @!attribute payment_method_type
          #   The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
          #
          #   @return [String]
          required :payment_method_type, String

          # @!method initialize(card:, display_name:, icons:, installment_count:, payment_method_type:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Dispute::Payment::PaymentInstrument} for more details.
          #
          #   The instrument this payment was made with, shaped for display: the method type,
          #   a buyer-facing name, the standard icon set, and the card facts when it was a
          #   card. Null when the payment names no method.
          #
          #   @param card [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Card, nil] Card payments only: the card's network and last four.
          #
          #   @param display_name [String] Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
          #
          #   @param icons [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons] The standard icon set: square and card shapes, each in light and dark colorways.
          #
          #   @param installment_count [Float, nil] Installment methods only: how many payments the charge splits into. Data, not co
          #
          #   @param payment_method_type [String] The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.

          # @see WhopSDK::Models::Dispute::Payment::PaymentInstrument#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute brand
            #   The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
            #   saved card payment methods.
            #
            #   @return [String]
            required :brand, String

            # @!attribute last4
            #   The card's last four digits, when captured.
            #
            #   @return [String, nil]
            required :last4, String, nil?: true

            # @!method initialize(brand:, last4:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Dispute::Payment::PaymentInstrument::Card} for more details.
            #
            #   Card payments only: the card's network and last four.
            #
            #   @param brand [String] The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
            #
            #   @param last4 [String, nil] The card's last four digits, when captured.
          end

          # @see WhopSDK::Models::Dispute::Payment::PaymentInstrument#icons
          class Icons < WhopSDK::Internal::Type::BaseModel
            # @!attribute card
            #   The credit-card-proportioned tile (48x30).
            #
            #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Card]
            required :card, -> { WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card }

            # @!attribute square
            #   The square tile (32x32).
            #
            #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Square]
            required :square, -> { WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square }

            # @!method initialize(card:, square:)
            #   The standard icon set: square and card shapes, each in light and dark colorways.
            #
            #   @param card [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Card] The credit-card-proportioned tile (48x30).
            #
            #   @param square [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Square] The square tile (32x32).

            # @see WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons#card
            class Card < WhopSDK::Internal::Type::BaseModel
              # @!attribute dark
              #   The colorway for dark surfaces.
              #
              #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Card::Dark]
              required :dark, -> { WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Dark }

              # @!attribute light
              #   The colorway for light surfaces.
              #
              #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Card::Light]
              required :light, -> { WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Light }

              # @!method initialize(dark:, light:)
              #   The credit-card-proportioned tile (48x30).
              #
              #   @param dark [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Card::Dark] The colorway for dark surfaces.
              #
              #   @param light [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Card::Light] The colorway for light surfaces.

              # @see WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Card#dark
              class Dark < WhopSDK::Internal::Type::BaseModel
                # @!attribute png_1x
                #   Raster fallback at the shape's native size.
                #
                #   @return [String]
                required :png_1x, String

                # @!attribute png_2x
                #   Raster fallback at double density.
                #
                #   @return [String]
                required :png_2x, String

                # @!attribute png_4x
                #   Raster fallback at quadruple density.
                #
                #   @return [String]
                required :png_4x, String

                # @!attribute svg
                #   The vector file. Prefer this everywhere SVG renders.
                #
                #   @return [String]
                required :svg, String

                # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
                #   The colorway for dark surfaces.
                #
                #   @param png_1x [String] Raster fallback at the shape's native size.
                #
                #   @param png_2x [String] Raster fallback at double density.
                #
                #   @param png_4x [String] Raster fallback at quadruple density.
                #
                #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
              end

              # @see WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Card#light
              class Light < WhopSDK::Internal::Type::BaseModel
                # @!attribute png_1x
                #   Raster fallback at the shape's native size.
                #
                #   @return [String]
                required :png_1x, String

                # @!attribute png_2x
                #   Raster fallback at double density.
                #
                #   @return [String]
                required :png_2x, String

                # @!attribute png_4x
                #   Raster fallback at quadruple density.
                #
                #   @return [String]
                required :png_4x, String

                # @!attribute svg
                #   The vector file. Prefer this everywhere SVG renders.
                #
                #   @return [String]
                required :svg, String

                # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
                #   The colorway for light surfaces.
                #
                #   @param png_1x [String] Raster fallback at the shape's native size.
                #
                #   @param png_2x [String] Raster fallback at double density.
                #
                #   @param png_4x [String] Raster fallback at quadruple density.
                #
                #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
              end
            end

            # @see WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons#square
            class Square < WhopSDK::Internal::Type::BaseModel
              # @!attribute dark
              #   The colorway for dark surfaces.
              #
              #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Square::Dark]
              required :dark, -> { WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Dark }

              # @!attribute light
              #   The colorway for light surfaces.
              #
              #   @return [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Square::Light]
              required :light, -> { WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Light }

              # @!method initialize(dark:, light:)
              #   The square tile (32x32).
              #
              #   @param dark [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Square::Dark] The colorway for dark surfaces.
              #
              #   @param light [WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Square::Light] The colorway for light surfaces.

              # @see WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Square#dark
              class Dark < WhopSDK::Internal::Type::BaseModel
                # @!attribute png_1x
                #   Raster fallback at the shape's native size.
                #
                #   @return [String]
                required :png_1x, String

                # @!attribute png_2x
                #   Raster fallback at double density.
                #
                #   @return [String]
                required :png_2x, String

                # @!attribute png_4x
                #   Raster fallback at quadruple density.
                #
                #   @return [String]
                required :png_4x, String

                # @!attribute svg
                #   The vector file. Prefer this everywhere SVG renders.
                #
                #   @return [String]
                required :svg, String

                # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
                #   The colorway for dark surfaces.
                #
                #   @param png_1x [String] Raster fallback at the shape's native size.
                #
                #   @param png_2x [String] Raster fallback at double density.
                #
                #   @param png_4x [String] Raster fallback at quadruple density.
                #
                #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
              end

              # @see WhopSDK::Models::Dispute::Payment::PaymentInstrument::Icons::Square#light
              class Light < WhopSDK::Internal::Type::BaseModel
                # @!attribute png_1x
                #   Raster fallback at the shape's native size.
                #
                #   @return [String]
                required :png_1x, String

                # @!attribute png_2x
                #   Raster fallback at double density.
                #
                #   @return [String]
                required :png_2x, String

                # @!attribute png_4x
                #   Raster fallback at quadruple density.
                #
                #   @return [String]
                required :png_4x, String

                # @!attribute svg
                #   The vector file. Prefer this everywhere SVG renders.
                #
                #   @return [String]
                required :svg, String

                # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
                #   The colorway for light surfaces.
                #
                #   @param png_1x [String] Raster fallback at the shape's native size.
                #
                #   @param png_2x [String] Raster fallback at double density.
                #
                #   @param png_4x [String] Raster fallback at quadruple density.
                #
                #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
              end
            end
          end
        end
      end

      # Why the customer says they are disputing, normalized across card networks.
      # `other` covers a code Whop has not categorized yet — read `reason_code` for the
      # raw value.
      #
      # @see WhopSDK::Models::Dispute#reason
      module Reason
        extend WhopSDK::Internal::Type::Enum

        FRAUDULENT = :fraudulent
        UNRECOGNIZED = :unrecognized
        DECLINED_AUTHORIZATION = :declined_authorization
        PRODUCT_NOT_RECEIVED = :product_not_received
        PRODUCT_UNACCEPTABLE = :product_unacceptable
        SUBSCRIPTION_CANCELED = :subscription_canceled
        CREDIT_NOT_PROCESSED = :credit_not_processed
        DUPLICATE = :duplicate
        PROCESSING_ERROR = :processing_error
        DOCUMENTATION_REQUEST = :documentation_request
        BANK_CANNOT_PROCESS = :bank_cannot_process
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Where the dispute stands. `needs_response` is awaiting evidence, `under_review`
      # is with the processor, `won` returned the funds to the seller, `lost` returned
      # them to the customer, and `closed` ended without a ruling. A dispute past its
      # `evidence_due_at` reports `under_review` — the window to respond has closed.
      #
      # @see WhopSDK::Models::Dispute#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        NEEDS_RESPONSE = :needs_response
        UNDER_REVIEW = :under_review
        WON = :won
        LOST = :lost
        CLOSED = :closed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
