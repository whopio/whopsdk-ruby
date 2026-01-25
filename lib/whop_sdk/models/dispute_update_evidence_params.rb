# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Disputes#update_evidence
    class DisputeUpdateEvidenceParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute access_activity_log
      #   An IP access log for the user from Whop.
      #
      #   @return [String, nil]
      optional :access_activity_log, String, nil?: true

      # @!attribute billing_address
      #   The billing address of the user from their payment details.
      #
      #   @return [String, nil]
      optional :billing_address, String, nil?: true

      # @!attribute cancellation_policy_attachment
      #   A file containing the cancellation policy from the company.
      #
      #   @return [WhopSDK::Models::DisputeUpdateEvidenceParams::CancellationPolicyAttachment, nil]
      optional :cancellation_policy_attachment,
               -> { WhopSDK::DisputeUpdateEvidenceParams::CancellationPolicyAttachment },
               nil?: true

      # @!attribute cancellation_policy_disclosure
      #   A cancellation policy disclosure from the company.
      #
      #   @return [String, nil]
      optional :cancellation_policy_disclosure, String, nil?: true

      # @!attribute customer_communication_attachment
      #   A file containing the customer communication from the company (An image).
      #
      #   @return [WhopSDK::Models::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment, nil]
      optional :customer_communication_attachment,
               -> { WhopSDK::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment },
               nil?: true

      # @!attribute customer_email_address
      #   The email of the customer from their payment details.
      #
      #   @return [String, nil]
      optional :customer_email_address, String, nil?: true

      # @!attribute customer_name
      #   The name of the customer from their payment details.
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute notes
      #   Additional notes the company chooses to submit regarding the dispute.
      #
      #   @return [String, nil]
      optional :notes, String, nil?: true

      # @!attribute product_description
      #   The description of the product from the company.
      #
      #   @return [String, nil]
      optional :product_description, String, nil?: true

      # @!attribute refund_policy_attachment
      #   A file containing the refund policy from the company.
      #
      #   @return [WhopSDK::Models::DisputeUpdateEvidenceParams::RefundPolicyAttachment, nil]
      optional :refund_policy_attachment,
               -> { WhopSDK::DisputeUpdateEvidenceParams::RefundPolicyAttachment },
               nil?: true

      # @!attribute refund_policy_disclosure
      #   A refund policy disclosure from the company.
      #
      #   @return [String, nil]
      optional :refund_policy_disclosure, String, nil?: true

      # @!attribute refund_refusal_explanation
      #   A description on why the refund is being refused by the company.
      #
      #   @return [String, nil]
      optional :refund_refusal_explanation, String, nil?: true

      # @!attribute service_date
      #   When the product was delivered by the company.
      #
      #   @return [String, nil]
      optional :service_date, String, nil?: true

      # @!attribute uncategorized_attachment
      #   A file that does not fit in the other categories.
      #
      #   @return [WhopSDK::Models::DisputeUpdateEvidenceParams::UncategorizedAttachment, nil]
      optional :uncategorized_attachment,
               -> { WhopSDK::DisputeUpdateEvidenceParams::UncategorizedAttachment },
               nil?: true

      # @!method initialize(access_activity_log: nil, billing_address: nil, cancellation_policy_attachment: nil, cancellation_policy_disclosure: nil, customer_communication_attachment: nil, customer_email_address: nil, customer_name: nil, notes: nil, product_description: nil, refund_policy_attachment: nil, refund_policy_disclosure: nil, refund_refusal_explanation: nil, service_date: nil, uncategorized_attachment: nil, request_options: {})
      #   @param access_activity_log [String, nil] An IP access log for the user from Whop.
      #
      #   @param billing_address [String, nil] The billing address of the user from their payment details.
      #
      #   @param cancellation_policy_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::CancellationPolicyAttachment, nil] A file containing the cancellation policy from the company.
      #
      #   @param cancellation_policy_disclosure [String, nil] A cancellation policy disclosure from the company.
      #
      #   @param customer_communication_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment, nil] A file containing the customer communication from the company (An image).
      #
      #   @param customer_email_address [String, nil] The email of the customer from their payment details.
      #
      #   @param customer_name [String, nil] The name of the customer from their payment details.
      #
      #   @param notes [String, nil] Additional notes the company chooses to submit regarding the dispute.
      #
      #   @param product_description [String, nil] The description of the product from the company.
      #
      #   @param refund_policy_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::RefundPolicyAttachment, nil] A file containing the refund policy from the company.
      #
      #   @param refund_policy_disclosure [String, nil] A refund policy disclosure from the company.
      #
      #   @param refund_refusal_explanation [String, nil] A description on why the refund is being refused by the company.
      #
      #   @param service_date [String, nil] When the product was delivered by the company.
      #
      #   @param uncategorized_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::UncategorizedAttachment, nil] A file that does not fit in the other categories.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class CancellationPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   A file containing the cancellation policy from the company.
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
        #   A file containing the customer communication from the company (An image).
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
        #   A file containing the refund policy from the company.
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
        #   A file that does not fit in the other categories.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
