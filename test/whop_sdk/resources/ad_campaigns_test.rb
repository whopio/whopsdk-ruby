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
        created_at: Time,
        created_by_user: WhopSDK::AdCampaign::CreatedByUser,
        meta_config: WhopSDK::AdCampaign::MetaConfig | nil,
        platform: WhopSDK::AdCampaignPlatform,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        total_spend: Float,
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
        created_at: Time,
        created_by_user: WhopSDK::AdCampaign::CreatedByUser,
        meta_config: WhopSDK::AdCampaign::MetaConfig | nil,
        platform: WhopSDK::AdCampaignPlatform,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        total_spend: Float,
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
        created_at: Time,
        platform: WhopSDK::AdCampaignPlatform,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        total_spend: Float,
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
        created_at: Time,
        created_by_user: WhopSDK::AdCampaign::CreatedByUser,
        meta_config: WhopSDK::AdCampaign::MetaConfig | nil,
        platform: WhopSDK::AdCampaignPlatform,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        total_spend: Float,
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
        created_at: Time,
        created_by_user: WhopSDK::AdCampaign::CreatedByUser,
        meta_config: WhopSDK::AdCampaign::MetaConfig | nil,
        platform: WhopSDK::AdCampaignPlatform,
        status: WhopSDK::AdCampaignStatus,
        title: String,
        total_spend: Float,
        updated_at: Time
      }
    end
  end
end
