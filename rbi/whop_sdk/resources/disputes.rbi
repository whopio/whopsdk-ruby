# typed: strong

module WhopSDK
  module Resources
    # A Dispute is a chargeback a customer files against a payment through their bank,
    # or an inquiry that may become one. It carries the disputed payment, a deadline
    # to respond, your evidence, and the outcome once the processor rules.
    #
    # Use the Disputes API to list disputes, edit the evidence packet while a dispute
    # is still contestable, and submit it for review.
    class Disputes
      # Retrieves a single dispute.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Dispute)
      end
      def retrieve(
        # The dispute ID (`dspt_` tag).
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists the disputes across the accounts you can read.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          currency: String,
          direction: WhopSDK::DisputeListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::DisputeListParams::Order::OrSymbol,
          status: T::Array[WhopSDK::DisputeListParams::Status::OrSymbol],
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Dispute])
      end
      def list(
        # Query param: Only disputes filed against this account (`biz_` tag). Omit it to
        # cover every account you can read.
        account_id: nil,
        # Query param: A cursor; returns disputes after this position.
        after: nil,
        # Query param: A cursor; returns disputes before this position.
        before: nil,
        # Query param: Only disputes opened after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only disputes opened before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Only disputes in this three-letter ISO currency.
        currency: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: The number of disputes to return (default 20, max 100).
        first: nil,
        # Query param: The number of disputes to return from the end of the range.
        last: nil,
        # Query param: The field to sort disputes by.
        order: nil,
        # Query param: Only disputes in these statuses. Repeat the parameter to pass
        # several — one paginated list covers all of them. Covers both chargebacks and
        # inquiries at each stage. A `needs_response` dispute whose evidence deadline has
        # passed reports and filters as `under_review` instead.
        status: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
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
