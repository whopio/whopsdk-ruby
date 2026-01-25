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

      # A cancellation policy disclosure from the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_policy_disclosure

      # A file containing the customer communication from the company (An image).
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

        # A file containing the cancellation policy from the company.
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

        # A file containing the customer communication from the company (An image).
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

        # A file containing the refund policy from the company.
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

        # A file that does not fit in the other categories.
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
