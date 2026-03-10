# frozen_string_literal: true

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
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the dispute.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Dispute]
      #
      # @see WhopSDK::Models::DisputeRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["disputes/%1$s", id],
          model: WhopSDK::Dispute,
          options: params[:request_options]
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
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list disputes for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return disputes created after this timestamp.
      #
      # @param created_before [Time, nil] Only return disputes created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::DisputeListResponse>]
      #
      # @see WhopSDK::Models::DisputeListParams
      def list(params)
        parsed, options = WhopSDK::DisputeListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "disputes",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::DisputeListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DisputeSubmitEvidenceParams} for more details.
      #
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
      #
      # @overload submit_evidence(id, request_options: {})
      #
      # @param id [String] The unique identifier of the dispute to submit to the payment processor for revi
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Dispute]
      #
      # @see WhopSDK::Models::DisputeSubmitEvidenceParams
      def submit_evidence(id, params = {})
        @client.request(
          method: :post,
          path: ["disputes/%1$s/submit_evidence", id],
          model: WhopSDK::Dispute,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DisputeUpdateEvidenceParams} for more details.
      #
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
      #
      # @overload update_evidence(id, access_activity_log: nil, billing_address: nil, cancellation_policy_attachment: nil, cancellation_policy_disclosure: nil, customer_communication_attachment: nil, customer_email_address: nil, customer_name: nil, notes: nil, product_description: nil, refund_policy_attachment: nil, refund_policy_disclosure: nil, refund_refusal_explanation: nil, service_date: nil, uncategorized_attachment: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the dispute to update.
      #
      # @param access_activity_log [String, nil] An IP access activity log showing the customer used the service.
      #
      # @param billing_address [String, nil] The billing address associated with the customer's payment method.
      #
      # @param cancellation_policy_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::CancellationPolicyAttachment, nil] A file upload containing the company's cancellation policy document.
      #
      # @param cancellation_policy_disclosure [String, nil] The company's cancellation policy text to submit as evidence.
      #
      # @param customer_communication_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment, nil] A file upload containing evidence of customer communication. Must be a JPEG, PNG
      #
      # @param customer_email_address [String, nil] The email address of the customer associated with the disputed payment.
      #
      # @param customer_name [String, nil] The full name of the customer associated with the disputed payment.
      #
      # @param notes [String, nil] Additional notes or context to submit as part of the dispute evidence.
      #
      # @param product_description [String, nil] A description of the product or service that was provided to the customer.
      #
      # @param refund_policy_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::RefundPolicyAttachment, nil] A file upload containing the company's refund policy document.
      #
      # @param refund_policy_disclosure [String, nil] The company's refund policy text to submit as evidence.
      #
      # @param refund_refusal_explanation [String, nil] An explanation of why the refund request was refused.
      #
      # @param service_date [String, nil] The date when the product or service was delivered to the customer.
      #
      # @param uncategorized_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::UncategorizedAttachment, nil] A file upload for evidence that does not fit into the other categories.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Dispute]
      #
      # @see WhopSDK::Models::DisputeUpdateEvidenceParams
      def update_evidence(id, params = {})
        parsed, options = WhopSDK::DisputeUpdateEvidenceParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["disputes/%1$s/update_evidence", id],
          body: parsed,
          model: WhopSDK::Dispute,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
