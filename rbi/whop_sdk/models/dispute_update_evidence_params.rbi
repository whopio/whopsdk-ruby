# typed: strong

module WhopSDK
  module Models
    class DisputeUpdateEvidenceParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::DisputeUpdateEvidenceParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # An IP access log for the user from Whop.
      sig { returns(T.nilable(String)) }
      attr_accessor :access_activity_log

      # The billing address of the user from their payment details.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_address

      # A file containing the cancellation policy from the company.
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithDirectUploadID,
              WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :cancellation_policy_attachment

      # A cancellation policy disclosure from the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_policy_disclosure

      # A file containing the customer communication from the company (An image).
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithDirectUploadID,
              WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :customer_communication_attachment

      # The email of the customer from their payment details.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email_address

      # The name of the customer from their payment details.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # Additional notes the company chooses to submit regarding the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The description of the product from the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_description

      # A file containing the refund policy from the company.
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithDirectUploadID,
              WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :refund_policy_attachment

      # A refund policy disclosure from the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_policy_disclosure

      # A description on why the refund is being refused by the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_refusal_explanation

      # When the product was delivered by the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :service_date

      # A file that does not fit in the other categories.
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithDirectUploadID,
              WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :uncategorized_attachment

      sig do
        params(
          access_activity_log: T.nilable(String),
          billing_address: T.nilable(String),
          cancellation_policy_attachment:
            T.nilable(
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithID::OrHash
              )
            ),
          cancellation_policy_disclosure: T.nilable(String),
          customer_communication_attachment:
            T.nilable(
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithID::OrHash
              )
            ),
          customer_email_address: T.nilable(String),
          customer_name: T.nilable(String),
          notes: T.nilable(String),
          product_description: T.nilable(String),
          refund_policy_attachment:
            T.nilable(
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithID::OrHash
              )
            ),
          refund_policy_disclosure: T.nilable(String),
          refund_refusal_explanation: T.nilable(String),
          service_date: T.nilable(String),
          uncategorized_attachment:
            T.nilable(
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithID::OrHash
              )
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An IP access log for the user from Whop.
        access_activity_log: nil,
        # The billing address of the user from their payment details.
        billing_address: nil,
        # A file containing the cancellation policy from the company.
        cancellation_policy_attachment: nil,
        # A cancellation policy disclosure from the company.
        cancellation_policy_disclosure: nil,
        # A file containing the customer communication from the company (An image).
        customer_communication_attachment: nil,
        # The email of the customer from their payment details.
        customer_email_address: nil,
        # The name of the customer from their payment details.
        customer_name: nil,
        # Additional notes the company chooses to submit regarding the dispute.
        notes: nil,
        # The description of the product from the company.
        product_description: nil,
        # A file containing the refund policy from the company.
        refund_policy_attachment: nil,
        # A refund policy disclosure from the company.
        refund_policy_disclosure: nil,
        # A description on why the refund is being refused by the company.
        refund_refusal_explanation: nil,
        # When the product was delivered by the company.
        service_date: nil,
        # A file that does not fit in the other categories.
        uncategorized_attachment: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            access_activity_log: T.nilable(String),
            billing_address: T.nilable(String),
            cancellation_policy_attachment:
              T.nilable(
                T.any(
                  WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithDirectUploadID,
                  WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithID
                )
              ),
            cancellation_policy_disclosure: T.nilable(String),
            customer_communication_attachment:
              T.nilable(
                T.any(
                  WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithDirectUploadID,
                  WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithID
                )
              ),
            customer_email_address: T.nilable(String),
            customer_name: T.nilable(String),
            notes: T.nilable(String),
            product_description: T.nilable(String),
            refund_policy_attachment:
              T.nilable(
                T.any(
                  WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithDirectUploadID,
                  WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithID
                )
              ),
            refund_policy_disclosure: T.nilable(String),
            refund_refusal_explanation: T.nilable(String),
            service_date: T.nilable(String),
            uncategorized_attachment:
              T.nilable(
                T.any(
                  WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithDirectUploadID,
                  WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithID
                )
              ),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # A file containing the cancellation policy from the company.
      module CancellationPolicyAttachment
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithDirectUploadID,
              WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # A file containing the customer communication from the company (An image).
      module CustomerCommunicationAttachment
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithDirectUploadID,
              WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # A file containing the refund policy from the company.
      module RefundPolicyAttachment
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithDirectUploadID,
              WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # A file that does not fit in the other categories.
      module UncategorizedAttachment
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithDirectUploadID,
              WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
