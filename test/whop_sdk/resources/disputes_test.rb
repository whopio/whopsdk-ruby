# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::DisputesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.disputes.retrieve("id")

    assert_pattern do
      response => WhopSDK::Dispute
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        amount: Float,
        buyer: WhopSDK::Dispute::Buyer | nil,
        created_at: String,
        currency: String,
        evidence: WhopSDK::Dispute::Evidence,
        evidence_due_at: String | nil,
        evidence_editable: WhopSDK::Internal::Type::Boolean,
        evidence_locked_reason: WhopSDK::Dispute::EvidenceLockedReason | nil,
        evidence_submitted_at: String | nil,
        generated_response_attachment: WhopSDK::Dispute::GeneratedResponseAttachment | nil,
        inquiry: WhopSDK::Internal::Type::Boolean,
        issuer_comments: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Dispute::IssuerComment]),
        payment: WhopSDK::Dispute::Payment | nil,
        plan_id: String | nil,
        product_id: String | nil,
        rapid_dispute_resolution: WhopSDK::Internal::Type::Boolean,
        reason: WhopSDK::Dispute::Reason,
        reason_code: String | nil,
        status: WhopSDK::Dispute::Status,
        updated_at: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.disputes.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Dispute
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String | nil,
        amount: Float,
        buyer: WhopSDK::Dispute::Buyer | nil,
        created_at: String,
        currency: String,
        evidence: WhopSDK::Dispute::Evidence,
        evidence_due_at: String | nil,
        evidence_editable: WhopSDK::Internal::Type::Boolean,
        evidence_locked_reason: WhopSDK::Dispute::EvidenceLockedReason | nil,
        evidence_submitted_at: String | nil,
        generated_response_attachment: WhopSDK::Dispute::GeneratedResponseAttachment | nil,
        inquiry: WhopSDK::Internal::Type::Boolean,
        issuer_comments: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Dispute::IssuerComment]),
        payment: WhopSDK::Dispute::Payment | nil,
        plan_id: String | nil,
        product_id: String | nil,
        rapid_dispute_resolution: WhopSDK::Internal::Type::Boolean,
        reason: WhopSDK::Dispute::Reason,
        reason_code: String | nil,
        status: WhopSDK::Dispute::Status,
        updated_at: String
      }
    end
  end

  def test_submit_evidence
    skip("Mock server tests are disabled")

    response = @whop.disputes.submit_evidence("dspt_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::DisputeSubmitEvidenceResponse
    end

    assert_pattern do
      response => {
        id: String,
        access_activity_log: String | nil,
        amount: Float,
        billing_address: String | nil,
        cancellation_policy_attachment: WhopSDK::Models::DisputeSubmitEvidenceResponse::CancellationPolicyAttachment | nil,
        cancellation_policy_disclosure: String | nil,
        company: WhopSDK::Models::DisputeSubmitEvidenceResponse::Company | nil,
        created_at: Time | nil,
        currency: WhopSDK::Currency,
        customer_communication_attachment: WhopSDK::Models::DisputeSubmitEvidenceResponse::CustomerCommunicationAttachment | nil,
        customer_email_address: String | nil,
        customer_name: String | nil,
        editable: WhopSDK::Internal::Type::Boolean | nil,
        needs_response_by: Time | nil,
        notes: String | nil,
        payment: WhopSDK::Models::DisputeSubmitEvidenceResponse::Payment | nil,
        plan: WhopSDK::Models::DisputeSubmitEvidenceResponse::Plan | nil,
        product: WhopSDK::Models::DisputeSubmitEvidenceResponse::Product | nil,
        product_description: String | nil,
        reason: String | nil,
        reason_code: String | nil,
        refund_policy_attachment: WhopSDK::Models::DisputeSubmitEvidenceResponse::RefundPolicyAttachment | nil,
        refund_policy_disclosure: String | nil,
        refund_refusal_explanation: String | nil,
        service_date: String | nil,
        status: WhopSDK::DisputeStatuses,
        uncategorized_attachment: WhopSDK::Models::DisputeSubmitEvidenceResponse::UncategorizedAttachment | nil,
        visa_rdr: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_update_evidence
    skip("Mock server tests are disabled")

    response = @whop.disputes.update_evidence("dspt_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::DisputeUpdateEvidenceResponse
    end

    assert_pattern do
      response => {
        id: String,
        access_activity_log: String | nil,
        amount: Float,
        billing_address: String | nil,
        cancellation_policy_attachment: WhopSDK::Models::DisputeUpdateEvidenceResponse::CancellationPolicyAttachment | nil,
        cancellation_policy_disclosure: String | nil,
        company: WhopSDK::Models::DisputeUpdateEvidenceResponse::Company | nil,
        created_at: Time | nil,
        currency: WhopSDK::Currency,
        customer_communication_attachment: WhopSDK::Models::DisputeUpdateEvidenceResponse::CustomerCommunicationAttachment | nil,
        customer_email_address: String | nil,
        customer_name: String | nil,
        editable: WhopSDK::Internal::Type::Boolean | nil,
        needs_response_by: Time | nil,
        notes: String | nil,
        payment: WhopSDK::Models::DisputeUpdateEvidenceResponse::Payment | nil,
        plan: WhopSDK::Models::DisputeUpdateEvidenceResponse::Plan | nil,
        product: WhopSDK::Models::DisputeUpdateEvidenceResponse::Product | nil,
        product_description: String | nil,
        reason: String | nil,
        reason_code: String | nil,
        refund_policy_attachment: WhopSDK::Models::DisputeUpdateEvidenceResponse::RefundPolicyAttachment | nil,
        refund_policy_disclosure: String | nil,
        refund_refusal_explanation: String | nil,
        service_date: String | nil,
        status: WhopSDK::DisputeStatuses,
        uncategorized_attachment: WhopSDK::Models::DisputeUpdateEvidenceResponse::UncategorizedAttachment | nil,
        visa_rdr: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
