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
end
