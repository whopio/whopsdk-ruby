# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Disputes#update_evidence
    class DisputeUpdateEvidenceParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute access_activity_log
      #   An IP access activity log showing the customer used the service.
      #
      #   @return [String, nil]
      optional :access_activity_log, String, nil?: true

      # @!attribute billing_address
      #   The billing address associated with the customer's payment method.
      #
      #   @return [String, nil]
      optional :billing_address, String, nil?: true

      # @!attribute cancellation_policy_attachment
      #   A file upload containing the company's cancellation policy document.
      #
      #   @return [WhopSDK::Models::DisputeUpdateEvidenceParams::CancellationPolicyAttachment, nil]
      optional :cancellation_policy_attachment,
               -> { WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment },
               nil?: true

      # @!attribute cancellation_policy_disclosure
      #   The company's cancellation policy text to submit as evidence.
      #
      #   @return [String, nil]
      optional :cancellation_policy_disclosure, String, nil?: true

      # @!attribute customer_communication_attachment
      #   A file upload containing evidence of customer communication. Must be a JPEG,
      #   PNG, GIF, or PDF.
      #
      #   @return [WhopSDK::Models::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment, nil]
      optional :customer_communication_attachment,
               -> { WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment },
               nil?: true

      # @!attribute customer_email_address
      #   The email address of the customer associated with the disputed payment.
      #
      #   @return [String, nil]
      optional :customer_email_address, String, nil?: true

      # @!attribute customer_name
      #   The full name of the customer associated with the disputed payment.
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute notes
      #   Additional notes or context to submit as part of the dispute evidence.
      #
      #   @return [String, nil]
      optional :notes, String, nil?: true

      # @!attribute product_description
      #   A description of the product or service that was provided to the customer.
      #
      #   @return [String, nil]
      optional :product_description, String, nil?: true

      # @!attribute refund_policy_attachment
      #   A file upload containing the company's refund policy document.
      #
      #   @return [WhopSDK::Models::DisputeUpdateEvidenceParams::RefundPolicyAttachment, nil]
      optional :refund_policy_attachment,
               -> { WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment },
               nil?: true

      # @!attribute refund_policy_disclosure
      #   The company's refund policy text to submit as evidence.
      #
      #   @return [String, nil]
      optional :refund_policy_disclosure, String, nil?: true

      # @!attribute refund_refusal_explanation
      #   An explanation of why the refund request was refused.
      #
      #   @return [String, nil]
      optional :refund_refusal_explanation, String, nil?: true

      # @!attribute service_date
      #   The date when the product or service was delivered to the customer.
      #
      #   @return [String, nil]
      optional :service_date, String, nil?: true

      # @!attribute uncategorized_attachment
      #   A file upload for evidence that does not fit into the other categories.
      #
      #   @return [WhopSDK::Models::DisputeUpdateEvidenceParams::UncategorizedAttachment, nil]
      optional :uncategorized_attachment,
               -> { WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment },
               nil?: true

      # @!method initialize(access_activity_log: nil, billing_address: nil, cancellation_policy_attachment: nil, cancellation_policy_disclosure: nil, customer_communication_attachment: nil, customer_email_address: nil, customer_name: nil, notes: nil, product_description: nil, refund_policy_attachment: nil, refund_policy_disclosure: nil, refund_refusal_explanation: nil, service_date: nil, uncategorized_attachment: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DisputeUpdateEvidenceParams} for more details.
      #
      #   @param access_activity_log [String, nil] An IP access activity log showing the customer used the service.
      #
      #   @param billing_address [String, nil] The billing address associated with the customer's payment method.
      #
      #   @param cancellation_policy_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::CancellationPolicyAttachment, nil] A file upload containing the company's cancellation policy document.
      #
      #   @param cancellation_policy_disclosure [String, nil] The company's cancellation policy text to submit as evidence.
      #
      #   @param customer_communication_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment, nil] A file upload containing evidence of customer communication. Must be a JPEG, PNG
      #
      #   @param customer_email_address [String, nil] The email address of the customer associated with the disputed payment.
      #
      #   @param customer_name [String, nil] The full name of the customer associated with the disputed payment.
      #
      #   @param notes [String, nil] Additional notes or context to submit as part of the dispute evidence.
      #
      #   @param product_description [String, nil] A description of the product or service that was provided to the customer.
      #
      #   @param refund_policy_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::RefundPolicyAttachment, nil] A file upload containing the company's refund policy document.
      #
      #   @param refund_policy_disclosure [String, nil] The company's refund policy text to submit as evidence.
      #
      #   @param refund_refusal_explanation [String, nil] An explanation of why the refund request was refused.
      #
      #   @param service_date [String, nil] The date when the product or service was delivered to the customer.
      #
      #   @param uncategorized_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::UncategorizedAttachment, nil] A file upload for evidence that does not fit into the other categories.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class CancellationPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   A file upload containing the company's cancellation policy document.
        #
        #   @param id [String] The ID of an existing file object.
      end

      class CustomerCommunicationAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   A file upload containing evidence of customer communication. Must be a JPEG,
        #   PNG, GIF, or PDF.
        #
        #   @param id [String] The ID of an existing file object.
      end

      class RefundPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   A file upload containing the company's refund policy document.
        #
        #   @param id [String] The ID of an existing file object.
      end

      class UncategorizedAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   A file upload for evidence that does not fit into the other categories.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
