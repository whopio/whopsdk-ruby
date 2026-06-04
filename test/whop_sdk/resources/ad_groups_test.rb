# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdGroupsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.retrieve("adgrp_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdGroupStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.update("adgrp_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdGroupStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AdGroupListResponse
    end

    assert_pattern do
      row => {
        id: String,
        ad_campaign: WhopSDK::Models::AdGroupListResponse::AdCampaign,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdGroupListResponse::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdGroupStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.delete("adgrp_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_pause
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.pause("adgrp_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdGroupStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_unpause
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.unpause("adgrp_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        budget: Float | nil,
        budget_type: WhopSDK::AdBudgetType | nil,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::AdGroupStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end
end
