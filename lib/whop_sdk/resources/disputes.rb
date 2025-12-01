# frozen_string_literal: true

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
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the dispute
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

      # Lists disputes the current actor has access to
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
      # @param company_id [String] The ID of the company to list disputes for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
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
        @client.request(
          method: :get,
          path: "disputes",
          query: parsed,
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
      # @param id [String] The ID of the dispute (Ex. dspt_xxxx) you want to finalize evidence submission f
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
      # @param id [String] The ID of the dispute you want to update.
      #
      # @param access_activity_log [String, nil] An IP access log for the user from Whop.
      #
      # @param billing_address [String, nil] The billing address of the user from their payment details.
      #
      # @param cancellation_policy_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::DisputeUpdateEvidenceParams::CancellationPolicyAttachment::AttachmentInputWithID, nil] A file containing the cancellation policy from the company.
      #
      # @param cancellation_policy_disclosure [String, nil] A cancellation policy disclosure from the company.
      #
      # @param customer_communication_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::DisputeUpdateEvidenceParams::CustomerCommunicationAttachment::AttachmentInputWithID, nil] A file containing the customer communication from the company (An image).
      #
      # @param customer_email_address [String, nil] The email of the customer from their payment details.
      #
      # @param customer_name [String, nil] The name of the customer from their payment details.
      #
      # @param notes [String, nil] Additional notes the company chooses to submit regarding the dispute.
      #
      # @param product_description [String, nil] The description of the product from the company.
      #
      # @param refund_policy_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::DisputeUpdateEvidenceParams::RefundPolicyAttachment::AttachmentInputWithID, nil] A file containing the refund policy from the company.
      #
      # @param refund_policy_disclosure [String, nil] A refund policy disclosure from the company.
      #
      # @param refund_refusal_explanation [String, nil] A description on why the refund is being refused by the company.
      #
      # @param service_date [String, nil] When the product was delivered by the company.
      #
      # @param uncategorized_attachment [WhopSDK::Models::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::DisputeUpdateEvidenceParams::UncategorizedAttachment::AttachmentInputWithID, nil] A file that does not fit in the other categories.
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
