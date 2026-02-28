# typed: strong

module WhopSDK
  module Resources
    # Disputes
    class Disputes
      # Retrieves the details of an existing dispute.
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
        # The unique identifier of the dispute.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of disputes for a company, with optional filtering by
      # creation date. A dispute represents a chargeback or inquiry filed by a customer
      # against a payment.
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
        # The unique identifier of the company to list disputes for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return disputes created after this timestamp.
        created_after: nil,
        # Only return disputes created before this timestamp.
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
        # The unique identifier of the dispute to submit to the payment processor for
        # review.
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
        ).returns(WhopSDK::Dispute)
      end
      def update_evidence(
        # The unique identifier of the dispute to update.
        id,
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

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
