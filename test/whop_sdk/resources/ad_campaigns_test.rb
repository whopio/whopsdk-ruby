# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdCampaignsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.retrieve("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_lead: Float | nil,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Integer,
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.update("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_lead: Float | nil,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Integer,
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AdCampaignListResponse
    end

    assert_pattern do
      row => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_lead: Float | nil,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdCampaignListResponse::Issue]),
        leads: Integer,
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_pause
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.pause("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_lead: Float | nil,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Integer,
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_unpause
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.unpause("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_lead: Float | nil,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Integer,
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end
end
