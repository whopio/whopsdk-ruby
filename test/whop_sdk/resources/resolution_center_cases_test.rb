# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ResolutionCenterCasesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.resolution_center_cases.retrieve("reso_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::ResolutionCenterCaseRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        company: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Company | nil,
        created_at: Time,
        customer_appealed: WhopSDK::Internal::Type::Boolean,
        customer_response_actions: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseCustomerResponse]),
        due_date: Time | nil,
        issue: WhopSDK::ResolutionCenterCaseIssueType,
        member: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Member | nil,
        merchant_appealed: WhopSDK::Internal::Type::Boolean,
        merchant_response_actions: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseMerchantResponse]),
        payment: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Payment,
        platform_response_actions: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCasePlatformResponse]),
        resolution_events: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent]),
        status: WhopSDK::ResolutionCenterCaseStatus,
        updated_at: Time,
        user: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::User
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
        company: WhopSDK::Models::ResolutionCenterCaseListResponse::Company | nil,
        created_at: Time,
        customer_appealed: WhopSDK::Internal::Type::Boolean,
        customer_response_actions: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseCustomerResponse]),
        due_date: Time | nil,
        issue: WhopSDK::ResolutionCenterCaseIssueType,
        merchant_appealed: WhopSDK::Internal::Type::Boolean,
        merchant_response_actions: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseMerchantResponse]),
        payment: WhopSDK::Models::ResolutionCenterCaseListResponse::Payment,
        status: WhopSDK::ResolutionCenterCaseStatus,
        updated_at: Time,
        user: WhopSDK::Models::ResolutionCenterCaseListResponse::User
      }
    end
  end
end
