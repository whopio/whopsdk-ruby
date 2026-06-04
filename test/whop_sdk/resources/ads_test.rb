# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ads.retrieve("ad_xxxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Ad
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Ad::AdCampaign,
        ad_group: WhopSDK::Ad::AdGroup,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::ExternalAdStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.ads.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AdListResponse
    end

    assert_pattern do
      row => {
        id: String,
        ad_campaign: WhopSDK::Models::AdListResponse::AdCampaign,
        ad_group: WhopSDK::Models::AdListResponse::AdGroup,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdListResponse::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::ExternalAdStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_pause
    skip("Mock server tests are disabled")

    response = @whop.ads.pause("ad_xxxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Ad
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Ad::AdCampaign,
        ad_group: WhopSDK::Ad::AdGroup,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::ExternalAdStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_unpause
    skip("Mock server tests are disabled")

    response = @whop.ads.unpause("ad_xxxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Ad
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Ad::AdCampaign,
        ad_group: WhopSDK::Ad::AdGroup,
        clicks: Integer,
        cost_per_result: Float | nil,
        cpc: Float,
        cpm: Float | nil,
        created_at: Time,
        ctr: Float,
        frequency: Float | nil,
        impressions: Integer,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Issue]),
        platform: WhopSDK::AdCampaignPlatform,
        purchase_value: Float,
        purchases: Integer,
        reach: Integer,
        results: Integer,
        roas: Float,
        spend: Float,
        spend_currency: WhopSDK::Currency | nil,
        status: WhopSDK::ExternalAdStatus,
        title: String | nil,
        unique_ctr: Float | nil,
        updated_at: Time
      }
    end
  end
end
