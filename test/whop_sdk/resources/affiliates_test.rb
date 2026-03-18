# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AffiliatesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.affiliates.create(company_id: "biz_xxxxxxxxxxxxxx", user_identifier: "user_identifier")

    assert_pattern do
      response => WhopSDK::Affiliate
    end

    assert_pattern do
      response => {
        id: String,
        active_members_count: Integer,
        company: WhopSDK::Affiliate::Company,
        created_at: Time,
        customer_retention_rate: String,
        customer_retention_rate_ninety_days: String,
        monthly_recurring_revenue_usd: String,
        status: WhopSDK::Status | nil,
        total_overrides_count: Integer,
        total_referral_earnings_usd: String,
        total_referrals_count: Integer,
        total_revenue_usd: String,
        updated_at: Time,
        user: WhopSDK::Affiliate::User
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.affiliates.retrieve("aff_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Affiliate
    end

    assert_pattern do
      response => {
        id: String,
        active_members_count: Integer,
        company: WhopSDK::Affiliate::Company,
        created_at: Time,
        customer_retention_rate: String,
        customer_retention_rate_ninety_days: String,
        monthly_recurring_revenue_usd: String,
        status: WhopSDK::Status | nil,
        total_overrides_count: Integer,
        total_referral_earnings_usd: String,
        total_referrals_count: Integer,
        total_revenue_usd: String,
        updated_at: Time,
        user: WhopSDK::Affiliate::User
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.affiliates.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AffiliateListResponse
    end

    assert_pattern do
      row => {
        id: String,
        active_members_count: Integer,
        company: WhopSDK::Models::AffiliateListResponse::Company,
        created_at: Time,
        customer_retention_rate: String,
        customer_retention_rate_ninety_days: String,
        monthly_recurring_revenue_usd: String,
        status: WhopSDK::Status | nil,
        total_overrides_count: Integer,
        total_referral_earnings_usd: String,
        total_referrals_count: Integer,
        total_revenue_usd: String,
        updated_at: Time,
        user: WhopSDK::Models::AffiliateListResponse::User
      }
    end
  end

  def test_archive
    skip("Mock server tests are disabled")

    response = @whop.affiliates.archive("aff_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_unarchive
    skip("Mock server tests are disabled")

    response = @whop.affiliates.unarchive("aff_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
