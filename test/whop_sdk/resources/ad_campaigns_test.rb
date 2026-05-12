# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdCampaignsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.retrieve("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdCampaignRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::Models::AdCampaignRetrieveResponse::BudgetType | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignRetrieveResponse::CreatedByUser,
        meta_config: WhopSDK::Models::AdCampaignRetrieveResponse::MetaConfig | nil,
        platform: WhopSDK::Models::AdCampaignRetrieveResponse::Platform,
        status: WhopSDK::Models::AdCampaignRetrieveResponse::Status,
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
      response => WhopSDK::Models::AdCampaignUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::Models::AdCampaignUpdateResponse::BudgetType | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignUpdateResponse::CreatedByUser,
        meta_config: WhopSDK::Models::AdCampaignUpdateResponse::MetaConfig | nil,
        platform: WhopSDK::Models::AdCampaignUpdateResponse::Platform,
        status: WhopSDK::Models::AdCampaignUpdateResponse::Status,
        title: String,
        total_spend: Float,
        updated_at: Time
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.list(company_id: "biz_xxxxxxxxxxxxxx")

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
        budget_type: WhopSDK::Models::AdCampaignListResponse::BudgetType | nil,
        created_at: Time,
        platform: WhopSDK::Models::AdCampaignListResponse::Platform,
        status: WhopSDK::Models::AdCampaignListResponse::Status,
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
      response => WhopSDK::Models::AdCampaignPauseResponse
    end

    assert_pattern do
      response => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::Models::AdCampaignPauseResponse::BudgetType | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignPauseResponse::CreatedByUser,
        meta_config: WhopSDK::Models::AdCampaignPauseResponse::MetaConfig | nil,
        platform: WhopSDK::Models::AdCampaignPauseResponse::Platform,
        status: WhopSDK::Models::AdCampaignPauseResponse::Status,
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
      response => WhopSDK::Models::AdCampaignUnpauseResponse
    end

    assert_pattern do
      response => {
        id: String,
        budget: Float | nil,
        budget_type: WhopSDK::Models::AdCampaignUnpauseResponse::BudgetType | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignUnpauseResponse::CreatedByUser,
        meta_config: WhopSDK::Models::AdCampaignUnpauseResponse::MetaConfig | nil,
        platform: WhopSDK::Models::AdCampaignUnpauseResponse::Platform,
        status: WhopSDK::Models::AdCampaignUnpauseResponse::Status,
        title: String,
        total_spend: Float,
        updated_at: Time
      }
    end
  end
end
