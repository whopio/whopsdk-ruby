# typed: strong

module WhopSDK
  module Models
    class Dispute < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Dispute, WhopSDK::Internal::AnyHash) }

      # Dispute ID, prefixed `dspt_`.
      sig { returns(String) }
      attr_accessor :id

      # The account the dispute was filed against, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # The disputed amount, in whole units of `currency`.
      sig { returns(Float) }
      attr_accessor :amount

      # The customer who filed the dispute.
      sig { returns(T.nilable(WhopSDK::Dispute::Buyer)) }
      attr_reader :buyer

      sig { params(buyer: T.nilable(WhopSDK::Dispute::Buyer::OrHash)).void }
      attr_writer :buyer

      # When the dispute was opened, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Three-letter ISO currency code of the disputed amount.
      sig { returns(String) }
      attr_accessor :currency

      # The evidence packet sent to the processor to contest the dispute.
      sig { returns(WhopSDK::Dispute::Evidence) }
      attr_reader :evidence

      sig { params(evidence: WhopSDK::Dispute::Evidence::OrHash).void }
      attr_writer :evidence

      # The deadline to submit evidence, as an ISO 8601 timestamp. Whop reserves the
      # last 24 hours before the processor's own cutoff to forward the submission.
      sig { returns(T.nilable(String)) }
      attr_accessor :evidence_due_at

      # Whether `evidence` can still be changed and submitted.
      sig { returns(T::Boolean) }
      attr_accessor :evidence_editable

      # Why evidence can no longer be edited. `null` while `evidence_editable` is true.
      sig do
        returns(T.nilable(WhopSDK::Dispute::EvidenceLockedReason::TaggedSymbol))
      end
      attr_accessor :evidence_locked_reason

      # When the evidence was submitted to the processor, as an ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_accessor :evidence_submitted_at

      # The AI-generated representment document filed with the processor on the seller's
      # behalf, once ready. Null until generation completes, and for disputes not using
      # Whop Dispute Fighter.
      sig { returns(T.nilable(WhopSDK::Dispute::GeneratedResponseAttachment)) }
      attr_reader :generated_response_attachment

      sig do
        params(
          generated_response_attachment:
            T.nilable(WhopSDK::Dispute::GeneratedResponseAttachment::OrHash)
        ).void
      end
      attr_writer :generated_response_attachment

      # Whether this is a pre-dispute inquiry rather than a formal chargeback. Inquiries
      # follow the same lifecycle but move no funds unless one escalates.
      sig { returns(T::Boolean) }
      attr_accessor :inquiry

      sig { returns(T::Array[WhopSDK::Dispute::IssuerComment]) }
      attr_accessor :issuer_comments

      # The payment being disputed.
      sig { returns(T.nilable(WhopSDK::Dispute::Payment)) }
      attr_reader :payment

      sig { params(payment: T.nilable(WhopSDK::Dispute::Payment::OrHash)).void }
      attr_writer :payment

      # The plan the disputed payment was made on, prefixed `plan_`.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # The product the disputed payment was for, prefixed `prod_`.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # Whether Visa Rapid Dispute Resolution settled this automatically. These refund
      # the customer without an evidence round.
      sig { returns(T::Boolean) }
      attr_accessor :rapid_dispute_resolution

      # Why the customer says they are disputing, normalized across card networks.
      # `other` covers a code Whop has not categorized yet — read `reason_code` for the
      # raw value.
      sig { returns(WhopSDK::Dispute::Reason::TaggedSymbol) }
      attr_accessor :reason

      # The raw card-network or processor reason code, such as `10.4`.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason_code

      # Where the dispute stands. `needs_response` is awaiting evidence, `under_review`
      # is with the processor, `won` returned the funds to the seller, `lost` returned
      # them to the customer, and `closed` ended without a ruling. A dispute past its
      # `evidence_due_at` reports `under_review` — the window to respond has closed.
      sig { returns(WhopSDK::Dispute::Status::TaggedSymbol) }
      attr_accessor :status

      # When the dispute was last changed, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          amount: Float,
          buyer: T.nilable(WhopSDK::Dispute::Buyer::OrHash),
          created_at: String,
          currency: String,
          evidence: WhopSDK::Dispute::Evidence::OrHash,
          evidence_due_at: T.nilable(String),
          evidence_editable: T::Boolean,
          evidence_locked_reason:
            T.nilable(WhopSDK::Dispute::EvidenceLockedReason::OrSymbol),
          evidence_submitted_at: T.nilable(String),
          generated_response_attachment:
            T.nilable(WhopSDK::Dispute::GeneratedResponseAttachment::OrHash),
          inquiry: T::Boolean,
          issuer_comments: T::Array[WhopSDK::Dispute::IssuerComment::OrHash],
          payment: T.nilable(WhopSDK::Dispute::Payment::OrHash),
          plan_id: T.nilable(String),
          product_id: T.nilable(String),
          rapid_dispute_resolution: T::Boolean,
          reason: WhopSDK::Dispute::Reason::OrSymbol,
          reason_code: T.nilable(String),
          status: WhopSDK::Dispute::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Dispute ID, prefixed `dspt_`.
        id:,
        # The account the dispute was filed against, prefixed `biz_`.
        account_id:,
        # The disputed amount, in whole units of `currency`.
        amount:,
        # The customer who filed the dispute.
        buyer:,
        # When the dispute was opened, as an ISO 8601 timestamp.
        created_at:,
        # Three-letter ISO currency code of the disputed amount.
        currency:,
        # The evidence packet sent to the processor to contest the dispute.
        evidence:,
        # The deadline to submit evidence, as an ISO 8601 timestamp. Whop reserves the
        # last 24 hours before the processor's own cutoff to forward the submission.
        evidence_due_at:,
        # Whether `evidence` can still be changed and submitted.
        evidence_editable:,
        # Why evidence can no longer be edited. `null` while `evidence_editable` is true.
        evidence_locked_reason:,
        # When the evidence was submitted to the processor, as an ISO 8601 timestamp.
        evidence_submitted_at:,
        # The AI-generated representment document filed with the processor on the seller's
        # behalf, once ready. Null until generation completes, and for disputes not using
        # Whop Dispute Fighter.
        generated_response_attachment:,
        # Whether this is a pre-dispute inquiry rather than a formal chargeback. Inquiries
        # follow the same lifecycle but move no funds unless one escalates.
        inquiry:,
        issuer_comments:,
        # The payment being disputed.
        payment:,
        # The plan the disputed payment was made on, prefixed `plan_`.
        plan_id:,
        # The product the disputed payment was for, prefixed `prod_`.
        product_id:,
        # Whether Visa Rapid Dispute Resolution settled this automatically. These refund
        # the customer without an evidence round.
        rapid_dispute_resolution:,
        # Why the customer says they are disputing, normalized across card networks.
        # `other` covers a code Whop has not categorized yet — read `reason_code` for the
        # raw value.
        reason:,
        # The raw card-network or processor reason code, such as `10.4`.
        reason_code:,
        # Where the dispute stands. `needs_response` is awaiting evidence, `under_review`
        # is with the processor, `won` returned the funds to the seller, `lost` returned
        # them to the customer, and `closed` ended without a ruling. A dispute past its
        # `evidence_due_at` reports `under_review` — the window to respond has closed.
        status:,
        # When the dispute was last changed, as an ISO 8601 timestamp.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: T.nilable(String),
            amount: Float,
            buyer: T.nilable(WhopSDK::Dispute::Buyer),
            created_at: String,
            currency: String,
            evidence: WhopSDK::Dispute::Evidence,
            evidence_due_at: T.nilable(String),
            evidence_editable: T::Boolean,
            evidence_locked_reason:
              T.nilable(WhopSDK::Dispute::EvidenceLockedReason::TaggedSymbol),
            evidence_submitted_at: T.nilable(String),
            generated_response_attachment:
              T.nilable(WhopSDK::Dispute::GeneratedResponseAttachment),
            inquiry: T::Boolean,
            issuer_comments: T::Array[WhopSDK::Dispute::IssuerComment],
            payment: T.nilable(WhopSDK::Dispute::Payment),
            plan_id: T.nilable(String),
            product_id: T.nilable(String),
            rapid_dispute_resolution: T::Boolean,
            reason: WhopSDK::Dispute::Reason::TaggedSymbol,
            reason_code: T.nilable(String),
            status: WhopSDK::Dispute::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class Buyer < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::Buyer, WhopSDK::Internal::AnyHash)
          end

        # The customer's email address. Requires the `member:email:read` scope; `null`
        # without it.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The customer's member row on the account, prefixed `mem_`.
        sig { returns(T.nilable(String)) }
        attr_accessor :member_id

        # The customer's display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The customer's user ID, prefixed `user_`. `null` for a guest checkout.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_id

        # The customer's Whop username.
        sig { returns(T.nilable(String)) }
        attr_accessor :username

        # The customer who filed the dispute.
        sig do
          params(
            email: T.nilable(String),
            member_id: T.nilable(String),
            name: T.nilable(String),
            user_id: T.nilable(String),
            username: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The customer's email address. Requires the `member:email:read` scope; `null`
          # without it.
          email:,
          # The customer's member row on the account, prefixed `mem_`.
          member_id:,
          # The customer's display name.
          name:,
          # The customer's user ID, prefixed `user_`. `null` for a guest checkout.
          user_id:,
          # The customer's Whop username.
          username:
        )
        end

        sig do
          override.returns(
            {
              email: T.nilable(String),
              member_id: T.nilable(String),
              name: T.nilable(String),
              user_id: T.nilable(String),
              username: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Evidence < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::Evidence, WhopSDK::Internal::AnyHash)
          end

        # Log of the customer's access to the product, such as sign-in or download
        # activity.
        sig { returns(T.nilable(String)) }
        attr_accessor :access_activity_log

        # The billing address the customer provided at checkout.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_address

        # The cancellation policy document. Falls back to Whop's platform policy when the
        # seller has not uploaded their own.
        sig do
          returns(
            T.nilable(WhopSDK::Dispute::Evidence::CancellationPolicyAttachment)
          )
        end
        attr_reader :cancellation_policy_attachment

        sig do
          params(
            cancellation_policy_attachment:
              T.nilable(
                WhopSDK::Dispute::Evidence::CancellationPolicyAttachment::OrHash
              )
          ).void
        end
        attr_writer :cancellation_policy_attachment

        # How the cancellation policy was shown to the customer before purchase.
        sig { returns(T.nilable(String)) }
        attr_accessor :cancellation_policy_disclosure

        # Correspondence with the customer, or proof they used the product.
        sig do
          returns(
            T.nilable(
              WhopSDK::Dispute::Evidence::CustomerCommunicationAttachment
            )
          )
        end
        attr_reader :customer_communication_attachment

        sig do
          params(
            customer_communication_attachment:
              T.nilable(
                WhopSDK::Dispute::Evidence::CustomerCommunicationAttachment::OrHash
              )
          ).void
        end
        attr_writer :customer_communication_attachment

        # The email address the customer used at checkout.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_email_address

        # The customer's name as given at checkout.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_name

        sig { returns(T::Array[WhopSDK::Dispute::Evidence::Document]) }
        attr_accessor :documents

        # Any additional context for the processor reviewing the dispute.
        sig { returns(T.nilable(String)) }
        attr_accessor :notes

        # What the customer purchased, in the seller's own words.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_description

        # The refund policy document. Falls back to Whop's platform policy when the seller
        # has not uploaded their own.
        sig do
          returns(T.nilable(WhopSDK::Dispute::Evidence::RefundPolicyAttachment))
        end
        attr_reader :refund_policy_attachment

        sig do
          params(
            refund_policy_attachment:
              T.nilable(
                WhopSDK::Dispute::Evidence::RefundPolicyAttachment::OrHash
              )
          ).void
        end
        attr_writer :refund_policy_attachment

        # How the refund policy was shown to the customer before purchase.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund_policy_disclosure

        # Why a refund was refused, when one was requested and denied.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund_refusal_explanation

        # When the product or service was delivered.
        sig { returns(T.nilable(String)) }
        attr_accessor :service_date

        # Supporting evidence that does not fit the other categories.
        sig do
          returns(
            T.nilable(WhopSDK::Dispute::Evidence::UncategorizedAttachment)
          )
        end
        attr_reader :uncategorized_attachment

        sig do
          params(
            uncategorized_attachment:
              T.nilable(
                WhopSDK::Dispute::Evidence::UncategorizedAttachment::OrHash
              )
          ).void
        end
        attr_writer :uncategorized_attachment

        # The evidence packet sent to the processor to contest the dispute.
        sig do
          params(
            access_activity_log: T.nilable(String),
            billing_address: T.nilable(String),
            cancellation_policy_attachment:
              T.nilable(
                WhopSDK::Dispute::Evidence::CancellationPolicyAttachment::OrHash
              ),
            cancellation_policy_disclosure: T.nilable(String),
            customer_communication_attachment:
              T.nilable(
                WhopSDK::Dispute::Evidence::CustomerCommunicationAttachment::OrHash
              ),
            customer_email_address: T.nilable(String),
            customer_name: T.nilable(String),
            documents: T::Array[WhopSDK::Dispute::Evidence::Document::OrHash],
            notes: T.nilable(String),
            product_description: T.nilable(String),
            refund_policy_attachment:
              T.nilable(
                WhopSDK::Dispute::Evidence::RefundPolicyAttachment::OrHash
              ),
            refund_policy_disclosure: T.nilable(String),
            refund_refusal_explanation: T.nilable(String),
            service_date: T.nilable(String),
            uncategorized_attachment:
              T.nilable(
                WhopSDK::Dispute::Evidence::UncategorizedAttachment::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Log of the customer's access to the product, such as sign-in or download
          # activity.
          access_activity_log:,
          # The billing address the customer provided at checkout.
          billing_address:,
          # The cancellation policy document. Falls back to Whop's platform policy when the
          # seller has not uploaded their own.
          cancellation_policy_attachment:,
          # How the cancellation policy was shown to the customer before purchase.
          cancellation_policy_disclosure:,
          # Correspondence with the customer, or proof they used the product.
          customer_communication_attachment:,
          # The email address the customer used at checkout.
          customer_email_address:,
          # The customer's name as given at checkout.
          customer_name:,
          documents:,
          # Any additional context for the processor reviewing the dispute.
          notes:,
          # What the customer purchased, in the seller's own words.
          product_description:,
          # The refund policy document. Falls back to Whop's platform policy when the seller
          # has not uploaded their own.
          refund_policy_attachment:,
          # How the refund policy was shown to the customer before purchase.
          refund_policy_disclosure:,
          # Why a refund was refused, when one was requested and denied.
          refund_refusal_explanation:,
          # When the product or service was delivered.
          service_date:,
          # Supporting evidence that does not fit the other categories.
          uncategorized_attachment:
        )
        end

        sig do
          override.returns(
            {
              access_activity_log: T.nilable(String),
              billing_address: T.nilable(String),
              cancellation_policy_attachment:
                T.nilable(
                  WhopSDK::Dispute::Evidence::CancellationPolicyAttachment
                ),
              cancellation_policy_disclosure: T.nilable(String),
              customer_communication_attachment:
                T.nilable(
                  WhopSDK::Dispute::Evidence::CustomerCommunicationAttachment
                ),
              customer_email_address: T.nilable(String),
              customer_name: T.nilable(String),
              documents: T::Array[WhopSDK::Dispute::Evidence::Document],
              notes: T.nilable(String),
              product_description: T.nilable(String),
              refund_policy_attachment:
                T.nilable(WhopSDK::Dispute::Evidence::RefundPolicyAttachment),
              refund_policy_disclosure: T.nilable(String),
              refund_refusal_explanation: T.nilable(String),
              service_date: T.nilable(String),
              uncategorized_attachment:
                T.nilable(WhopSDK::Dispute::Evidence::UncategorizedAttachment)
            }
          )
        end
        def to_hash
        end

        class CancellationPolicyAttachment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Dispute::Evidence::CancellationPolicyAttachment,
                WhopSDK::Internal::AnyHash
              )
            end

          # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          # file.
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # The uploaded file's MIME type.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # The uploaded file's name.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # Whether this is Whop's own hosted policy, standing in because the seller
          # uploaded none. Sending it back on a PATCH changes nothing.
          sig { returns(T::Boolean) }
          attr_accessor :platform

          # A URL to download the attachment.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # The cancellation policy document. Falls back to Whop's platform policy when the
          # seller has not uploaded their own.
          sig do
            params(
              id: T.nilable(String),
              content_type: T.nilable(String),
              filename: T.nilable(String),
              platform: T::Boolean,
              url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
            # file.
            id:,
            # The uploaded file's MIME type.
            content_type:,
            # The uploaded file's name.
            filename:,
            # Whether this is Whop's own hosted policy, standing in because the seller
            # uploaded none. Sending it back on a PATCH changes nothing.
            platform:,
            # A URL to download the attachment.
            url:
          )
          end

          sig do
            override.returns(
              {
                id: T.nilable(String),
                content_type: T.nilable(String),
                filename: T.nilable(String),
                platform: T::Boolean,
                url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class CustomerCommunicationAttachment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Dispute::Evidence::CustomerCommunicationAttachment,
                WhopSDK::Internal::AnyHash
              )
            end

          # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          # file.
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # The uploaded file's MIME type.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # The uploaded file's name.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # Whether this is Whop's own hosted policy, standing in because the seller
          # uploaded none. Sending it back on a PATCH changes nothing.
          sig { returns(T::Boolean) }
          attr_accessor :platform

          # A URL to download the attachment.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # Correspondence with the customer, or proof they used the product.
          sig do
            params(
              id: T.nilable(String),
              content_type: T.nilable(String),
              filename: T.nilable(String),
              platform: T::Boolean,
              url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
            # file.
            id:,
            # The uploaded file's MIME type.
            content_type:,
            # The uploaded file's name.
            filename:,
            # Whether this is Whop's own hosted policy, standing in because the seller
            # uploaded none. Sending it back on a PATCH changes nothing.
            platform:,
            # A URL to download the attachment.
            url:
          )
          end

          sig do
            override.returns(
              {
                id: T.nilable(String),
                content_type: T.nilable(String),
                filename: T.nilable(String),
                platform: T::Boolean,
                url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Document < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Dispute::Evidence::Document,
                WhopSDK::Internal::AnyHash
              )
            end

          # The file's ID, prefixed `file_`.
          sig { returns(String) }
          attr_accessor :id

          # The uploaded file's MIME type. Uploads are restricted to the types the processor
          # accepts.
          sig do
            returns(
              T.nilable(
                WhopSDK::Dispute::Evidence::Document::ContentType::TaggedSymbol
              )
            )
          end
          attr_accessor :content_type

          # When the file was created, as an ISO 8601 timestamp.
          sig { returns(String) }
          attr_accessor :created_at

          # What kind of evidence the document is.
          sig do
            returns(
              WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
            )
          end
          attr_accessor :document_type

          # The original filename, including its extension.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # The type of this object, always `file`.
          sig { returns(String) }
          attr_accessor :object

          # The file size in bytes. `null` until the upload has finished.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :size

          # Where the file is in its upload lifecycle.
          sig do
            returns(
              WhopSDK::Dispute::Evidence::Document::UploadStatus::TaggedSymbol
            )
          end
          attr_accessor :upload_status

          # A URL to download the file: a permanent CDN URL for public files, a signed
          # expiring URL for private ones. `null` until the upload has finished.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          sig do
            returns(
              WhopSDK::Dispute::Evidence::Document::Visibility::TaggedSymbol
            )
          end
          attr_accessor :visibility

          # The byte size each part (except the last) must be. Present only on create, and
          # only for multipart uploads.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :multipart_chunk_size

          # The ID of the multipart upload, passed back to `complete`. Present only on
          # create, and only for multipart uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :multipart_upload_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Dispute::Evidence::Document::MultipartUploadURL
                ]
              )
            )
          end
          attr_accessor :multipart_upload_urls

          # Headers to send with the upload PUT. Present only on create.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :upload_headers

          sig { params(upload_headers: T.anything).void }
          attr_writer :upload_headers

          # Presigned URL to PUT the file's bytes to. Present only on create, and only for
          # single-part uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :upload_url

          # Additional evidence documents uploaded through
          # `POST /disputes/{id}/upload_evidence`, beyond the four fixed slots. Each rides
          # into the submitted packet under its `document_type`.
          sig do
            params(
              id: String,
              content_type:
                T.nilable(
                  WhopSDK::Dispute::Evidence::Document::ContentType::OrSymbol
                ),
              created_at: String,
              document_type:
                WhopSDK::Dispute::Evidence::Document::DocumentType::OrSymbol,
              filename: T.nilable(String),
              object: String,
              size: T.nilable(Integer),
              upload_status:
                WhopSDK::Dispute::Evidence::Document::UploadStatus::OrSymbol,
              url: T.nilable(String),
              visibility:
                WhopSDK::Dispute::Evidence::Document::Visibility::OrSymbol,
              multipart_chunk_size: T.nilable(Integer),
              multipart_upload_id: T.nilable(String),
              multipart_upload_urls:
                T.nilable(
                  T::Array[
                    WhopSDK::Dispute::Evidence::Document::MultipartUploadURL::OrHash
                  ]
                ),
              upload_headers: T.anything,
              upload_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The file's ID, prefixed `file_`.
            id:,
            # The uploaded file's MIME type. Uploads are restricted to the types the processor
            # accepts.
            content_type:,
            # When the file was created, as an ISO 8601 timestamp.
            created_at:,
            # What kind of evidence the document is.
            document_type:,
            # The original filename, including its extension.
            filename:,
            # The type of this object, always `file`.
            object:,
            # The file size in bytes. `null` until the upload has finished.
            size:,
            # Where the file is in its upload lifecycle.
            upload_status:,
            # A URL to download the file: a permanent CDN URL for public files, a signed
            # expiring URL for private ones. `null` until the upload has finished.
            url:,
            # `public` files are served via an unsigned CDN URL; `private` files via a signed,
            # expiring URL.
            visibility:,
            # The byte size each part (except the last) must be. Present only on create, and
            # only for multipart uploads.
            multipart_chunk_size: nil,
            # The ID of the multipart upload, passed back to `complete`. Present only on
            # create, and only for multipart uploads.
            multipart_upload_id: nil,
            multipart_upload_urls: nil,
            # Headers to send with the upload PUT. Present only on create.
            upload_headers: nil,
            # Presigned URL to PUT the file's bytes to. Present only on create, and only for
            # single-part uploads.
            upload_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content_type:
                  T.nilable(
                    WhopSDK::Dispute::Evidence::Document::ContentType::TaggedSymbol
                  ),
                created_at: String,
                document_type:
                  WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol,
                filename: T.nilable(String),
                object: String,
                size: T.nilable(Integer),
                upload_status:
                  WhopSDK::Dispute::Evidence::Document::UploadStatus::TaggedSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::Dispute::Evidence::Document::Visibility::TaggedSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::Dispute::Evidence::Document::MultipartUploadURL
                    ]
                  ),
                upload_headers: T.anything,
                upload_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The uploaded file's MIME type. Uploads are restricted to the types the processor
          # accepts.
          module ContentType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, WhopSDK::Dispute::Evidence::Document::ContentType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPLICATION_PDF =
              T.let(
                :"application/pdf",
                WhopSDK::Dispute::Evidence::Document::ContentType::TaggedSymbol
              )
            APPLICATION_JSON =
              T.let(
                :"application/json",
                WhopSDK::Dispute::Evidence::Document::ContentType::TaggedSymbol
              )
            IMAGE_JPEG =
              T.let(
                :"image/jpeg",
                WhopSDK::Dispute::Evidence::Document::ContentType::TaggedSymbol
              )
            IMAGE_PNG =
              T.let(
                :"image/png",
                WhopSDK::Dispute::Evidence::Document::ContentType::TaggedSymbol
              )
            IMAGE_WEBP =
              T.let(
                :"image/webp",
                WhopSDK::Dispute::Evidence::Document::ContentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Dispute::Evidence::Document::ContentType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # What kind of evidence the document is.
          module DocumentType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Dispute::Evidence::Document::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RETURN_POLICY =
              T.let(
                :return_policy,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )
            SHIPPING_POLICY =
              T.let(
                :shipping_policy,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )
            PHYSICAL_FULFILLMENT =
              T.let(
                :physical_fulfillment,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )
            CUSTOMER_ORDER_HISTORY =
              T.let(
                :customer_order_history,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )
            PRODUCT_IMAGE =
              T.let(
                :product_image,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )
            PRIOR_TRANSACTIONS =
              T.let(
                :prior_transactions,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )
            CUSTOMER_SESSION =
              T.let(
                :customer_session,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )
            DIGITAL_FULFILLMENT =
              T.let(
                :digital_fulfillment,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :subscription,
                WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Dispute::Evidence::Document::DocumentType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Where the file is in its upload lifecycle.
          module UploadStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Dispute::Evidence::Document::UploadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                WhopSDK::Dispute::Evidence::Document::UploadStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::Dispute::Evidence::Document::UploadStatus::TaggedSymbol
              )
            READY =
              T.let(
                :ready,
                WhopSDK::Dispute::Evidence::Document::UploadStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                WhopSDK::Dispute::Evidence::Document::UploadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Dispute::Evidence::Document::UploadStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # `public` files are served via an unsigned CDN URL; `private` files via a signed,
          # expiring URL.
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, WhopSDK::Dispute::Evidence::Document::Visibility)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                WhopSDK::Dispute::Evidence::Document::Visibility::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                WhopSDK::Dispute::Evidence::Document::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Dispute::Evidence::Document::Visibility::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Dispute::Evidence::Document::MultipartUploadURL,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The 1-based index of this part within the multipart upload.
            sig { returns(Integer) }
            attr_accessor :part_number

            # The presigned URL to PUT this part's bytes to.
            sig { returns(String) }
            attr_accessor :url

            # The presigned URL for each part. Present only on create, and only for multipart
            # uploads.
            sig do
              params(part_number: Integer, url: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # The 1-based index of this part within the multipart upload.
              part_number:,
              # The presigned URL to PUT this part's bytes to.
              url:
            )
            end

            sig { override.returns({ part_number: Integer, url: String }) }
            def to_hash
            end
          end
        end

        class RefundPolicyAttachment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Dispute::Evidence::RefundPolicyAttachment,
                WhopSDK::Internal::AnyHash
              )
            end

          # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          # file.
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # The uploaded file's MIME type.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # The uploaded file's name.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # Whether this is Whop's own hosted policy, standing in because the seller
          # uploaded none. Sending it back on a PATCH changes nothing.
          sig { returns(T::Boolean) }
          attr_accessor :platform

          # A URL to download the attachment.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # The refund policy document. Falls back to Whop's platform policy when the seller
          # has not uploaded their own.
          sig do
            params(
              id: T.nilable(String),
              content_type: T.nilable(String),
              filename: T.nilable(String),
              platform: T::Boolean,
              url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
            # file.
            id:,
            # The uploaded file's MIME type.
            content_type:,
            # The uploaded file's name.
            filename:,
            # Whether this is Whop's own hosted policy, standing in because the seller
            # uploaded none. Sending it back on a PATCH changes nothing.
            platform:,
            # A URL to download the attachment.
            url:
          )
          end

          sig do
            override.returns(
              {
                id: T.nilable(String),
                content_type: T.nilable(String),
                filename: T.nilable(String),
                platform: T::Boolean,
                url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class UncategorizedAttachment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Dispute::Evidence::UncategorizedAttachment,
                WhopSDK::Internal::AnyHash
              )
            end

          # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          # file.
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # The uploaded file's MIME type.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # The uploaded file's name.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # Whether this is Whop's own hosted policy, standing in because the seller
          # uploaded none. Sending it back on a PATCH changes nothing.
          sig { returns(T::Boolean) }
          attr_accessor :platform

          # A URL to download the attachment.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # Supporting evidence that does not fit the other categories.
          sig do
            params(
              id: T.nilable(String),
              content_type: T.nilable(String),
              filename: T.nilable(String),
              platform: T::Boolean,
              url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
            # file.
            id:,
            # The uploaded file's MIME type.
            content_type:,
            # The uploaded file's name.
            filename:,
            # Whether this is Whop's own hosted policy, standing in because the seller
            # uploaded none. Sending it back on a PATCH changes nothing.
            platform:,
            # A URL to download the attachment.
            url:
          )
          end

          sig do
            override.returns(
              {
                id: T.nilable(String),
                content_type: T.nilable(String),
                filename: T.nilable(String),
                platform: T::Boolean,
                url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      # Why evidence can no longer be edited. `null` while `evidence_editable` is true.
      module EvidenceLockedReason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Dispute::EvidenceLockedReason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBMITTED =
          T.let(
            :submitted,
            WhopSDK::Dispute::EvidenceLockedReason::TaggedSymbol
          )
        RESPONSE_WINDOW_CLOSED =
          T.let(
            :response_window_closed,
            WhopSDK::Dispute::EvidenceLockedReason::TaggedSymbol
          )
        NOT_CONTESTABLE =
          T.let(
            :not_contestable,
            WhopSDK::Dispute::EvidenceLockedReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Dispute::EvidenceLockedReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class GeneratedResponseAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Dispute::GeneratedResponseAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
        # file.
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # The uploaded file's MIME type.
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The uploaded file's name.
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # Whether this is Whop's own hosted policy, standing in because the seller
        # uploaded none. Sending it back on a PATCH changes nothing.
        sig { returns(T::Boolean) }
        attr_accessor :platform

        # A URL to download the attachment.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The AI-generated representment document filed with the processor on the seller's
        # behalf, once ready. Null until generation completes, and for disputes not using
        # Whop Dispute Fighter.
        sig do
          params(
            id: T.nilable(String),
            content_type: T.nilable(String),
            filename: T.nilable(String),
            platform: T::Boolean,
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The attachment's ID. `null` for a Whop-hosted policy, which is not an uploaded
          # file.
          id:,
          # The uploaded file's MIME type.
          content_type:,
          # The uploaded file's name.
          filename:,
          # Whether this is Whop's own hosted policy, standing in because the seller
          # uploaded none. Sending it back on a PATCH changes nothing.
          platform:,
          # A URL to download the attachment.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: T.nilable(String),
              content_type: T.nilable(String),
              filename: T.nilable(String),
              platform: T::Boolean,
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class IssuerComment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::IssuerComment, WhopSDK::Internal::AnyHash)
          end

        # When the comment was received, as an ISO 8601 timestamp.
        sig { returns(T.nilable(String)) }
        attr_accessor :received_at

        # What the issuer wrote, as received.
        sig { returns(String) }
        attr_accessor :text

        # What the card issuer said when filing the dispute. Only populated when the
        # issuer provides them, and listed in the order they were received.
        sig do
          params(received_at: T.nilable(String), text: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # When the comment was received, as an ISO 8601 timestamp.
          received_at:,
          # What the issuer wrote, as received.
          text:
        )
        end

        sig do
          override.returns({ received_at: T.nilable(String), text: String })
        end
        def to_hash
        end
      end

      class Payment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::Payment, WhopSDK::Internal::AnyHash)
          end

        # Payment ID, prefixed `pay_`.
        sig { returns(String) }
        attr_accessor :id

        # What the customer was charged, in whole units of the payment's currency.
        sig { returns(T.nilable(Float)) }
        attr_accessor :amount

        # Card brand, when the customer paid by card.
        sig { returns(T.nilable(String)) }
        attr_accessor :card_brand

        # Last four digits of the card, when the customer paid by card.
        sig { returns(T.nilable(String)) }
        attr_accessor :card_last4

        # When the payment was made, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # Three-letter ISO currency code of the payment. Can differ from the dispute's
        # currency when the processor settles in another currency.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # The instrument this payment was made with, shaped for display: the method type,
        # a buyer-facing name, the standard icon set, and the card facts when it was a
        # card. Null when the payment names no method.
        sig { returns(T.nilable(WhopSDK::Dispute::Payment::PaymentInstrument)) }
        attr_reader :payment_instrument

        sig do
          params(
            payment_instrument:
              T.nilable(WhopSDK::Dispute::Payment::PaymentInstrument::OrHash)
          ).void
        end
        attr_writer :payment_instrument

        # How the customer paid, such as `card` or `paypal`.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_method_type

        # The processor that handled the payment, such as `stripe`.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_processor

        # The payment being disputed.
        sig do
          params(
            id: String,
            amount: T.nilable(Float),
            card_brand: T.nilable(String),
            card_last4: T.nilable(String),
            created_at: String,
            currency: T.nilable(String),
            payment_instrument:
              T.nilable(WhopSDK::Dispute::Payment::PaymentInstrument::OrHash),
            payment_method_type: T.nilable(String),
            payment_processor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Payment ID, prefixed `pay_`.
          id:,
          # What the customer was charged, in whole units of the payment's currency.
          amount:,
          # Card brand, when the customer paid by card.
          card_brand:,
          # Last four digits of the card, when the customer paid by card.
          card_last4:,
          # When the payment was made, as an ISO 8601 timestamp.
          created_at:,
          # Three-letter ISO currency code of the payment. Can differ from the dispute's
          # currency when the processor settles in another currency.
          currency:,
          # The instrument this payment was made with, shaped for display: the method type,
          # a buyer-facing name, the standard icon set, and the card facts when it was a
          # card. Null when the payment names no method.
          payment_instrument:,
          # How the customer paid, such as `card` or `paypal`.
          payment_method_type:,
          # The processor that handled the payment, such as `stripe`.
          payment_processor:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: T.nilable(Float),
              card_brand: T.nilable(String),
              card_last4: T.nilable(String),
              created_at: String,
              currency: T.nilable(String),
              payment_instrument:
                T.nilable(WhopSDK::Dispute::Payment::PaymentInstrument),
              payment_method_type: T.nilable(String),
              payment_processor: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Dispute::Payment::PaymentInstrument,
                WhopSDK::Internal::AnyHash
              )
            end

          # Card payments only: the card's network and last four.
          sig do
            returns(
              T.nilable(WhopSDK::Dispute::Payment::PaymentInstrument::Card)
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                T.nilable(
                  WhopSDK::Dispute::Payment::PaymentInstrument::Card::OrHash
                )
            ).void
          end
          attr_writer :card

          # Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
          # method's own name ("Klarna").
          sig { returns(String) }
          attr_accessor :display_name

          # The standard icon set: square and card shapes, each in light and dark colorways.
          sig { returns(WhopSDK::Dispute::Payment::PaymentInstrument::Icons) }
          attr_reader :icons

          sig do
            params(
              icons: WhopSDK::Dispute::Payment::PaymentInstrument::Icons::OrHash
            ).void
          end
          attr_writer :icons

          # Installment methods only: how many payments the charge splits into. Data, not
          # copy — compose and translate the label client-side.
          sig { returns(T.nilable(Float)) }
          attr_accessor :installment_count

          # The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
          sig { returns(String) }
          attr_accessor :payment_method_type

          # The instrument this payment was made with, shaped for display: the method type,
          # a buyer-facing name, the standard icon set, and the card facts when it was a
          # card. Null when the payment names no method.
          sig do
            params(
              card:
                T.nilable(
                  WhopSDK::Dispute::Payment::PaymentInstrument::Card::OrHash
                ),
              display_name: String,
              icons:
                WhopSDK::Dispute::Payment::PaymentInstrument::Icons::OrHash,
              installment_count: T.nilable(Float),
              payment_method_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Card payments only: the card's network and last four.
            card:,
            # Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
            # method's own name ("Klarna").
            display_name:,
            # The standard icon set: square and card shapes, each in light and dark colorways.
            icons:,
            # Installment methods only: how many payments the charge splits into. Data, not
            # copy — compose and translate the label client-side.
            installment_count:,
            # The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
            payment_method_type:
          )
          end

          sig do
            override.returns(
              {
                card:
                  T.nilable(WhopSDK::Dispute::Payment::PaymentInstrument::Card),
                display_name: String,
                icons: WhopSDK::Dispute::Payment::PaymentInstrument::Icons,
                installment_count: T.nilable(Float),
                payment_method_type: String
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Dispute::Payment::PaymentInstrument::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
            # saved card payment methods.
            sig { returns(String) }
            attr_accessor :brand

            # The card's last four digits, when captured.
            sig { returns(T.nilable(String)) }
            attr_accessor :last4

            # Card payments only: the card's network and last four.
            sig do
              params(brand: String, last4: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
              # saved card payment methods.
              brand:,
              # The card's last four digits, when captured.
              last4:
            )
            end

            sig do
              override.returns({ brand: String, last4: T.nilable(String) })
            end
            def to_hash
            end
          end

          class Icons < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The credit-card-proportioned tile (48x30).
            sig do
              returns(WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card)
            end
            attr_reader :card

            sig do
              params(
                card:
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::OrHash
              ).void
            end
            attr_writer :card

            # The square tile (32x32).
            sig do
              returns(
                WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square
              )
            end
            attr_reader :square

            sig do
              params(
                square:
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::OrHash
              ).void
            end
            attr_writer :square

            # The standard icon set: square and card shapes, each in light and dark colorways.
            sig do
              params(
                card:
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::OrHash,
                square:
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The credit-card-proportioned tile (48x30).
              card:,
              # The square tile (32x32).
              square:
            )
            end

            sig do
              override.returns(
                {
                  card:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card,
                  square:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square
                }
              )
            end
            def to_hash
            end

            class Card < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The colorway for dark surfaces.
              sig do
                returns(
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Dark
                )
              end
              attr_reader :dark

              sig do
                params(
                  dark:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Dark::OrHash
                ).void
              end
              attr_writer :dark

              # The colorway for light surfaces.
              sig do
                returns(
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Light
                )
              end
              attr_reader :light

              sig do
                params(
                  light:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Light::OrHash
                ).void
              end
              attr_writer :light

              # The credit-card-proportioned tile (48x30).
              sig do
                params(
                  dark:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Dark::OrHash,
                  light:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Light::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # The colorway for dark surfaces.
                dark:,
                # The colorway for light surfaces.
                light:
              )
              end

              sig do
                override.returns(
                  {
                    dark:
                      WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Dark,
                    light:
                      WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Light
                  }
                )
              end
              def to_hash
              end

              class Dark < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Dark,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Raster fallback at the shape's native size.
                sig { returns(String) }
                attr_accessor :png_1x

                # Raster fallback at double density.
                sig { returns(String) }
                attr_accessor :png_2x

                # Raster fallback at quadruple density.
                sig { returns(String) }
                attr_accessor :png_4x

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for dark surfaces.
                sig do
                  params(
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Raster fallback at the shape's native size.
                  png_1x:,
                  # Raster fallback at double density.
                  png_2x:,
                  # Raster fallback at quadruple density.
                  png_4x:,
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig do
                  override.returns(
                    {
                      png_1x: String,
                      png_2x: String,
                      png_4x: String,
                      svg: String
                    }
                  )
                end
                def to_hash
                end
              end

              class Light < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Card::Light,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Raster fallback at the shape's native size.
                sig { returns(String) }
                attr_accessor :png_1x

                # Raster fallback at double density.
                sig { returns(String) }
                attr_accessor :png_2x

                # Raster fallback at quadruple density.
                sig { returns(String) }
                attr_accessor :png_4x

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for light surfaces.
                sig do
                  params(
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Raster fallback at the shape's native size.
                  png_1x:,
                  # Raster fallback at double density.
                  png_2x:,
                  # Raster fallback at quadruple density.
                  png_4x:,
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig do
                  override.returns(
                    {
                      png_1x: String,
                      png_2x: String,
                      png_4x: String,
                      svg: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class Square < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The colorway for dark surfaces.
              sig do
                returns(
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Dark
                )
              end
              attr_reader :dark

              sig do
                params(
                  dark:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Dark::OrHash
                ).void
              end
              attr_writer :dark

              # The colorway for light surfaces.
              sig do
                returns(
                  WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Light
                )
              end
              attr_reader :light

              sig do
                params(
                  light:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Light::OrHash
                ).void
              end
              attr_writer :light

              # The square tile (32x32).
              sig do
                params(
                  dark:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Dark::OrHash,
                  light:
                    WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Light::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # The colorway for dark surfaces.
                dark:,
                # The colorway for light surfaces.
                light:
              )
              end

              sig do
                override.returns(
                  {
                    dark:
                      WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Dark,
                    light:
                      WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Light
                  }
                )
              end
              def to_hash
              end

              class Dark < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Dark,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Raster fallback at the shape's native size.
                sig { returns(String) }
                attr_accessor :png_1x

                # Raster fallback at double density.
                sig { returns(String) }
                attr_accessor :png_2x

                # Raster fallback at quadruple density.
                sig { returns(String) }
                attr_accessor :png_4x

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for dark surfaces.
                sig do
                  params(
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Raster fallback at the shape's native size.
                  png_1x:,
                  # Raster fallback at double density.
                  png_2x:,
                  # Raster fallback at quadruple density.
                  png_4x:,
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig do
                  override.returns(
                    {
                      png_1x: String,
                      png_2x: String,
                      png_4x: String,
                      svg: String
                    }
                  )
                end
                def to_hash
                end
              end

              class Light < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Dispute::Payment::PaymentInstrument::Icons::Square::Light,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Raster fallback at the shape's native size.
                sig { returns(String) }
                attr_accessor :png_1x

                # Raster fallback at double density.
                sig { returns(String) }
                attr_accessor :png_2x

                # Raster fallback at quadruple density.
                sig { returns(String) }
                attr_accessor :png_4x

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for light surfaces.
                sig do
                  params(
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Raster fallback at the shape's native size.
                  png_1x:,
                  # Raster fallback at double density.
                  png_2x:,
                  # Raster fallback at quadruple density.
                  png_4x:,
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig do
                  override.returns(
                    {
                      png_1x: String,
                      png_2x: String,
                      png_4x: String,
                      svg: String
                    }
                  )
                end
                def to_hash
                end
              end
            end
          end
        end
      end

      # Why the customer says they are disputing, normalized across card networks.
      # `other` covers a code Whop has not categorized yet — read `reason_code` for the
      # raw value.
      module Reason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Dispute::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FRAUDULENT = T.let(:fraudulent, WhopSDK::Dispute::Reason::TaggedSymbol)
        UNRECOGNIZED =
          T.let(:unrecognized, WhopSDK::Dispute::Reason::TaggedSymbol)
        DECLINED_AUTHORIZATION =
          T.let(:declined_authorization, WhopSDK::Dispute::Reason::TaggedSymbol)
        PRODUCT_NOT_RECEIVED =
          T.let(:product_not_received, WhopSDK::Dispute::Reason::TaggedSymbol)
        PRODUCT_UNACCEPTABLE =
          T.let(:product_unacceptable, WhopSDK::Dispute::Reason::TaggedSymbol)
        SUBSCRIPTION_CANCELED =
          T.let(:subscription_canceled, WhopSDK::Dispute::Reason::TaggedSymbol)
        CREDIT_NOT_PROCESSED =
          T.let(:credit_not_processed, WhopSDK::Dispute::Reason::TaggedSymbol)
        DUPLICATE = T.let(:duplicate, WhopSDK::Dispute::Reason::TaggedSymbol)
        PROCESSING_ERROR =
          T.let(:processing_error, WhopSDK::Dispute::Reason::TaggedSymbol)
        DOCUMENTATION_REQUEST =
          T.let(:documentation_request, WhopSDK::Dispute::Reason::TaggedSymbol)
        BANK_CANNOT_PROCESS =
          T.let(:bank_cannot_process, WhopSDK::Dispute::Reason::TaggedSymbol)
        OTHER = T.let(:other, WhopSDK::Dispute::Reason::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Dispute::Reason::TaggedSymbol])
        end
        def self.values
        end
      end

      # Where the dispute stands. `needs_response` is awaiting evidence, `under_review`
      # is with the processor, `won` returned the funds to the seller, `lost` returned
      # them to the customer, and `closed` ended without a ruling. A dispute past its
      # `evidence_due_at` reports `under_review` — the window to respond has closed.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Dispute::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEEDS_RESPONSE =
          T.let(:needs_response, WhopSDK::Dispute::Status::TaggedSymbol)
        UNDER_REVIEW =
          T.let(:under_review, WhopSDK::Dispute::Status::TaggedSymbol)
        WON = T.let(:won, WhopSDK::Dispute::Status::TaggedSymbol)
        LOST = T.let(:lost, WhopSDK::Dispute::Status::TaggedSymbol)
        CLOSED = T.let(:closed, WhopSDK::Dispute::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Dispute::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
