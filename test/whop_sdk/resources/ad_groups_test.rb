# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdGroupsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.create(campaign_id: "campaign_id")

    assert_pattern do
      response => WhopSDK::Models::AdGroupCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Models::AdGroupCreateResponse::AdCampaign,
        config: WhopSDK::Models::AdGroupCreateResponse::Config | nil,
        created_at: Time,
        daily_budget: Float | nil,
        name: String | nil,
        platform_config: WhopSDK::Models::AdGroupCreateResponse::PlatformConfig,
        status: WhopSDK::Models::AdGroupCreateResponse::Status,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.retrieve("adgrp_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdGroupRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Models::AdGroupRetrieveResponse::AdCampaign,
        config: WhopSDK::Models::AdGroupRetrieveResponse::Config | nil,
        created_at: Time,
        daily_budget: Float | nil,
        name: String | nil,
        platform_config: WhopSDK::Models::AdGroupRetrieveResponse::PlatformConfig,
        status: WhopSDK::Models::AdGroupRetrieveResponse::Status,
        updated_at: Time
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.update("adgrp_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdGroupUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Models::AdGroupUpdateResponse::AdCampaign,
        config: WhopSDK::Models::AdGroupUpdateResponse::Config | nil,
        created_at: Time,
        daily_budget: Float | nil,
        name: String | nil,
        platform_config: WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig,
        status: WhopSDK::Models::AdGroupUpdateResponse::Status,
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
        config: WhopSDK::Models::AdGroupListResponse::Config | nil,
        created_at: Time,
        daily_budget: Float | nil,
        name: String | nil,
        platform_config: WhopSDK::Models::AdGroupListResponse::PlatformConfig,
        status: WhopSDK::Models::AdGroupListResponse::Status,
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
end
