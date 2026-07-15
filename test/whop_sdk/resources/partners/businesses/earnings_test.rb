# frozen_string_literal: true

require_relative "../../../test_helper"

class WhopSDK::Test::Resources::Partners::Businesses::EarningsTest < WhopSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @whop.partners.businesses.earnings.list("id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::Partners::Businesses::EarningListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        account: WhopSDK::Models::Partners::Businesses::EarningListResponse::Account | nil,
        cancelation_reason: String | nil,
        commission_amount_usd: String | nil,
        created_at: Time,
        financial_activity: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity]) | nil,
        object: WhopSDK::Models::Partners::Businesses::EarningListResponse::Object,
        payout_at: Time | nil,
        payout_percentage: Float | nil,
        product: WhopSDK::Models::Partners::Businesses::EarningListResponse::Product | nil,
        resource: WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource | nil,
        second_tier: WhopSDK::Internal::Type::Boolean,
        status: WhopSDK::Models::Partners::Businesses::EarningListResponse::Status,
        transaction_amount_usd: String
      }
    end
  end
end
