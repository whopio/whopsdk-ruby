# typed: strong

module WhopSDK
  module Resources
    class Disputes
      # Retrieves a Dispute by ID
      #
      # Required permissions:
      #
      # - `payment:dispute:read`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `company:basic:read`
      # - `payment:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Dispute)
      end
      def retrieve(
        # The ID of the dispute
        id,
        request_options: {}
      )
      end

      # Lists disputes the current actor has access to
      #
      # Required permissions:
      #
      # - `payment:dispute:read`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `company:basic:read`
      # - `payment:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::DisputeListResponse]
        )
      end
      def list(
        # The ID of the company to list disputes for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Submit a payment dispute to the payment processor for review. Once submitted, no
      # further edits can be made.
      #
      # Required permissions:
      #
      # - `payment:dispute`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `company:basic:read`
      # - `payment:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Dispute)
      end
      def submit_evidence(
        # The ID of the dispute (Ex. dspt_xxxx) you want to finalize evidence submission
        # for and send to the processor.
        id,
        request_options: {}
      )
      end

      # Update a dispute with evidence data to attempt to win the dispute.
      #
      # Required permissions:
      #
      # - `payment:dispute`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `company:basic:read`
      # - `payment:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      sig do
        params(
          id: String,
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
        ).returns(WhopSDK::Dispute)
      end
      def update_evidence(
        # The ID of the dispute you want to update.
        id,
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

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
