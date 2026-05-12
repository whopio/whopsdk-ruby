# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ads.retrieve("ad_xxxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Models::AdRetrieveResponse::AdCampaign,
        ad_group: WhopSDK::Models::AdRetrieveResponse::AdGroup,
        created_at: Time,
        platform: WhopSDK::Models::AdRetrieveResponse::Platform,
        status: WhopSDK::Models::AdRetrieveResponse::Status,
        title: String | nil,
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
        created_at: Time,
        platform: WhopSDK::Models::AdListResponse::Platform,
        status: WhopSDK::Models::AdListResponse::Status,
        title: String | nil,
        updated_at: Time
      }
    end
  end
end
