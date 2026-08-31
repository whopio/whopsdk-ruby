# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ResolutionCenterCasesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.resolution_center_cases.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::ResolutionCenterCaseRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Account | nil,
        amount: Float,
        available_actions: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::AvailableAction]),
        buyer: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Buyer,
        created_at: String,
        currency: String | nil,
        customer_appealed: WhopSDK::Internal::Type::Boolean,
        escalated: WhopSDK::Internal::Type::Boolean,
        outcome: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Outcome | nil,
        payment: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Payment,
        plan_id: String | nil,
        product_id: String | nil,
        reason: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Reason,
        refund: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Refund | nil,
        response_due_at: String | nil,
        status: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Status,
        updated_at: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.resolution_center_cases.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::ResolutionCenterCaseListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account: WhopSDK::Models::ResolutionCenterCaseListResponse::Account | nil,
        amount: Float,
        available_actions: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::ResolutionCenterCaseListResponse::AvailableAction]),
        buyer: WhopSDK::Models::ResolutionCenterCaseListResponse::Buyer,
        created_at: String,
        currency: String | nil,
        customer_appealed: WhopSDK::Internal::Type::Boolean,
        escalated: WhopSDK::Internal::Type::Boolean,
        outcome: WhopSDK::Models::ResolutionCenterCaseListResponse::Outcome | nil,
        payment: WhopSDK::Models::ResolutionCenterCaseListResponse::Payment,
        plan_id: String | nil,
        product_id: String | nil,
        reason: WhopSDK::Models::ResolutionCenterCaseListResponse::Reason,
        refund: WhopSDK::Models::ResolutionCenterCaseListResponse::Refund | nil,
        response_due_at: String | nil,
        status: WhopSDK::Models::ResolutionCenterCaseListResponse::Status,
        updated_at: String
      }
    end
  end
end
