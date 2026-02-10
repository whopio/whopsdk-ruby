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

      # An IP access activity log showing the customer used the service.
      sig { returns(T.nilable(String)) }
      attr_accessor :access_activity_log

      # The billing address associated with the customer's payment method.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_address

      # A file upload containing the company's cancellation policy document.
      sig do
        returns(
          T.nilable(
            WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment
          )
        )
      end
      attr_reader :cancellation_policy_attachment

      sig do
        params(
          cancellation_policy_attachment:
            T.nilable(
              WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::OrHash
            )
        ).void
      end
      attr_writer :cancellation_policy_attachment

      # The company's cancellation policy text to submit as evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_policy_disclosure

      # A file upload containing evidence of customer communication. Must be a JPEG,
      # PNG, GIF, or PDF.
      sig do
        returns(
          T.nilable(
            WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment
          )
        )
      end
      attr_reader :customer_communication_attachment

      sig do
        params(
          customer_communication_attachment:
            T.nilable(
              WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::OrHash
            )
        ).void
      end
      attr_writer :customer_communication_attachment

      # The email address of the customer associated with the disputed payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email_address

      # The full name of the customer associated with the disputed payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # Additional notes or context to submit as part of the dispute evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # A description of the product or service that was provided to the customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_description

      # A file upload containing the company's refund policy document.
      sig do
        returns(
          T.nilable(
            WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment
          )
        )
      end
      attr_reader :refund_policy_attachment

      sig do
        params(
          refund_policy_attachment:
            T.nilable(
              WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::OrHash
            )
        ).void
      end
      attr_writer :refund_policy_attachment

      # The company's refund policy text to submit as evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_policy_disclosure

      # An explanation of why the refund request was refused.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_refusal_explanation

      # The date when the product or service was delivered to the customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :service_date

      # A file upload for evidence that does not fit into the other categories.
      sig do
        returns(
          T.nilable(
            WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment
          )
        )
      end
      attr_reader :uncategorized_attachment

      sig do
        params(
          uncategorized_attachment:
            T.nilable(
              WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::OrHash
            )
        ).void
      end
      attr_writer :uncategorized_attachment

      sig do
        params(
          access_activity_log: T.nilable(String),
          billing_address: T.nilable(String),
          cancellation_policy_attachment:
            T.nilable(
              WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::OrHash
            ),
          cancellation_policy_disclosure: T.nilable(String),
          customer_communication_attachment:
            T.nilable(
              WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::OrHash
            ),
          customer_email_address: T.nilable(String),
          customer_name: T.nilable(String),
          notes: T.nilable(String),
          product_description: T.nilable(String),
          refund_policy_attachment:
            T.nilable(
              WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment::OrHash
            ),
          refund_policy_disclosure: T.nilable(String),
          refund_refusal_explanation: T.nilable(String),
          service_date: T.nilable(String),
          uncategorized_attachment:
            T.nilable(
              WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An IP access activity log showing the customer used the service.
        access_activity_log: nil,
        # The billing address associated with the customer's payment method.
        billing_address: nil,
        # A file upload containing the company's cancellation policy document.
        cancellation_policy_attachment: nil,
        # The company's cancellation policy text to submit as evidence.
        cancellation_policy_disclosure: nil,
        # A file upload containing evidence of customer communication. Must be a JPEG,
        # PNG, GIF, or PDF.
        customer_communication_attachment: nil,
        # The email address of the customer associated with the disputed payment.
        customer_email_address: nil,
        # The full name of the customer associated with the disputed payment.
        customer_name: nil,
        # Additional notes or context to submit as part of the dispute evidence.
        notes: nil,
        # A description of the product or service that was provided to the customer.
        product_description: nil,
        # A file upload containing the company's refund policy document.
        refund_policy_attachment: nil,
        # The company's refund policy text to submit as evidence.
        refund_policy_disclosure: nil,
        # An explanation of why the refund request was refused.
        refund_refusal_explanation: nil,
        # The date when the product or service was delivered to the customer.
        service_date: nil,
        # A file upload for evidence that does not fit into the other categories.
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
                WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment
              ),
            cancellation_policy_disclosure: T.nilable(String),
            customer_communication_attachment:
              T.nilable(
                WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment
              ),
            customer_email_address: T.nilable(String),
            customer_name: T.nilable(String),
            notes: T.nilable(String),
            product_description: T.nilable(String),
            refund_policy_attachment:
              T.nilable(
                WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment
              ),
            refund_policy_disclosure: T.nilable(String),
            refund_refusal_explanation: T.nilable(String),
            service_date: T.nilable(String),
            uncategorized_attachment:
              T.nilable(
                WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment
              ),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CancellationPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # A file upload containing the company's cancellation policy document.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class CustomerCommunicationAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # A file upload containing evidence of customer communication. Must be a JPEG,
        # PNG, GIF, or PDF.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class RefundPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # A file upload containing the company's refund policy document.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class UncategorizedAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # A file upload for evidence that does not fit into the other categories.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
