# frozen_string_literal: true

require_relative "../../../test_helper"

class WhopSDK::Test::Resources::Referrals::Businesses::EarningsTest < WhopSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @whop.referrals.businesses.earnings.list("id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::Referrals::Businesses::EarningListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        account: WhopSDK::Models::Referrals::Businesses::EarningListResponse::Account | nil,
        cancelation_reason: String | nil,
        commission_amount_usd: String | nil,
        created_at: Time,
        financial_activity: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::Referrals::Businesses::EarningListResponse::FinancialActivity]) | nil,
        object: WhopSDK::Models::Referrals::Businesses::EarningListResponse::Object,
        payout_at: Time | nil,
        payout_percentage: Float | nil,
        product: WhopSDK::Models::Referrals::Businesses::EarningListResponse::Product | nil,
        resource: WhopSDK::Models::Referrals::Businesses::EarningListResponse::Resource | nil,
        second_tier: WhopSDK::Internal::Type::Boolean,
        status: WhopSDK::Models::Referrals::Businesses::EarningListResponse::Status,
        transaction_amount_usd: String
      }
    end
  end
end
