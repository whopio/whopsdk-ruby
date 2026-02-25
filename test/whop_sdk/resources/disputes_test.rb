# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::DisputesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.disputes.retrieve("dspt_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Dispute
    end

    assert_pattern do
      response => {
        id: String,
        access_activity_log: String | nil,
        amount: Float,
        billing_address: String | nil,
        cancellation_policy_attachment: WhopSDK::Dispute::CancellationPolicyAttachment | nil,
        cancellation_policy_disclosure: String | nil,
        company: WhopSDK::Dispute::Company | nil,
        created_at: Time | nil,
        currency: WhopSDK::Currency,
        customer_communication_attachment: WhopSDK::Dispute::CustomerCommunicationAttachment | nil,
        customer_email_address: String | nil,
        customer_name: String | nil,
        editable: WhopSDK::Internal::Type::Boolean | nil,
        needs_response_by: Time | nil,
        notes: String | nil,
        payment: WhopSDK::Dispute::Payment | nil,
        plan: WhopSDK::Dispute::Plan | nil,
        product: WhopSDK::Dispute::Product | nil,
        product_description: String | nil,
        reason: String | nil,
        refund_policy_attachment: WhopSDK::Dispute::RefundPolicyAttachment | nil,
        refund_policy_disclosure: String | nil,
        refund_refusal_explanation: String | nil,
        service_date: String | nil,
        status: WhopSDK::DisputeStatuses,
        uncategorized_attachment: WhopSDK::Dispute::UncategorizedAttachment | nil,
        visa_rdr: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.disputes.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::DisputeListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: Float,
        company: WhopSDK::Models::DisputeListResponse::Company | nil,
        created_at: Time | nil,
        currency: WhopSDK::Currency,
        editable: WhopSDK::Internal::Type::Boolean | nil,
        needs_response_by: Time | nil,
        payment: WhopSDK::Models::DisputeListResponse::Payment | nil,
        plan: WhopSDK::Models::DisputeListResponse::Plan | nil,
        product: WhopSDK::Models::DisputeListResponse::Product | nil,
        reason: String | nil,
        status: WhopSDK::DisputeStatuses,
        visa_rdr: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_submit_evidence
    skip("Mock server tests are disabled")

    response = @whop.disputes.submit_evidence("dspt_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Dispute
    end

    assert_pattern do
      response => {
        id: String,
        access_activity_log: String | nil,
        amount: Float,
        billing_address: String | nil,
        cancellation_policy_attachment: WhopSDK::Dispute::CancellationPolicyAttachment | nil,
        cancellation_policy_disclosure: String | nil,
        company: WhopSDK::Dispute::Company | nil,
        created_at: Time | nil,
        currency: WhopSDK::Currency,
        customer_communication_attachment: WhopSDK::Dispute::CustomerCommunicationAttachment | nil,
        customer_email_address: String | nil,
        customer_name: String | nil,
        editable: WhopSDK::Internal::Type::Boolean | nil,
        needs_response_by: Time | nil,
        notes: String | nil,
        payment: WhopSDK::Dispute::Payment | nil,
        plan: WhopSDK::Dispute::Plan | nil,
        product: WhopSDK::Dispute::Product | nil,
        product_description: String | nil,
        reason: String | nil,
        refund_policy_attachment: WhopSDK::Dispute::RefundPolicyAttachment | nil,
        refund_policy_disclosure: String | nil,
        refund_refusal_explanation: String | nil,
        service_date: String | nil,
        status: WhopSDK::DisputeStatuses,
        uncategorized_attachment: WhopSDK::Dispute::UncategorizedAttachment | nil,
        visa_rdr: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_update_evidence
    skip("Mock server tests are disabled")

    response = @whop.disputes.update_evidence("dspt_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Dispute
    end

    assert_pattern do
      response => {
        id: String,
        access_activity_log: String | nil,
        amount: Float,
        billing_address: String | nil,
        cancellation_policy_attachment: WhopSDK::Dispute::CancellationPolicyAttachment | nil,
        cancellation_policy_disclosure: String | nil,
        company: WhopSDK::Dispute::Company | nil,
        created_at: Time | nil,
        currency: WhopSDK::Currency,
        customer_communication_attachment: WhopSDK::Dispute::CustomerCommunicationAttachment | nil,
        customer_email_address: String | nil,
        customer_name: String | nil,
        editable: WhopSDK::Internal::Type::Boolean | nil,
        needs_response_by: Time | nil,
        notes: String | nil,
        payment: WhopSDK::Dispute::Payment | nil,
        plan: WhopSDK::Dispute::Plan | nil,
        product: WhopSDK::Dispute::Product | nil,
        product_description: String | nil,
        reason: String | nil,
        refund_policy_attachment: WhopSDK::Dispute::RefundPolicyAttachment | nil,
        refund_policy_disclosure: String | nil,
        refund_refusal_explanation: String | nil,
        service_date: String | nil,
        status: WhopSDK::DisputeStatuses,
        uncategorized_attachment: WhopSDK::Dispute::UncategorizedAttachment | nil,
        visa_rdr: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
