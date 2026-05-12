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
        budget: Float | nil,
        budget_type: WhopSDK::Models::AdGroupCreateResponse::BudgetType | nil,
        created_at: Time,
        platform: WhopSDK::Models::AdGroupCreateResponse::Platform,
        status: WhopSDK::Models::AdGroupCreateResponse::Status,
        title: String | nil,
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
        budget: Float | nil,
        budget_type: WhopSDK::Models::AdGroupRetrieveResponse::BudgetType | nil,
        created_at: Time,
        platform: WhopSDK::Models::AdGroupRetrieveResponse::Platform,
        status: WhopSDK::Models::AdGroupRetrieveResponse::Status,
        title: String | nil,
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
        budget: Float | nil,
        budget_type: WhopSDK::Models::AdGroupUpdateResponse::BudgetType | nil,
        created_at: Time,
        platform: WhopSDK::Models::AdGroupUpdateResponse::Platform,
        status: WhopSDK::Models::AdGroupUpdateResponse::Status,
        title: String | nil,
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
        budget: Float | nil,
        budget_type: WhopSDK::Models::AdGroupListResponse::BudgetType | nil,
        created_at: Time,
        platform: WhopSDK::Models::AdGroupListResponse::Platform,
        status: WhopSDK::Models::AdGroupListResponse::Status,
        title: String | nil,
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
