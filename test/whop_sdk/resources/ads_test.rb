# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.ads.create(ad_group_id: "ad_group_id")

    assert_pattern do
      response => WhopSDK::Models::AdCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_ad_creative_set: WhopSDK::Models::AdCreateResponse::ExternalAdCreativeSet | nil,
        external_ad_group: WhopSDK::Models::AdCreateResponse::ExternalAdGroup,
        platform_config: WhopSDK::Models::AdCreateResponse::PlatformConfig,
        status: WhopSDK::Models::AdCreateResponse::Status,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ads.retrieve("xad_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        external_ad_creative_set: WhopSDK::Models::AdRetrieveResponse::ExternalAdCreativeSet | nil,
        external_ad_group: WhopSDK::Models::AdRetrieveResponse::ExternalAdGroup,
        platform_config: WhopSDK::Models::AdRetrieveResponse::PlatformConfig,
        status: WhopSDK::Models::AdRetrieveResponse::Status,
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
        platform_config: WhopSDK::Models::AdListResponse::PlatformConfig,
        status: WhopSDK::Models::AdListResponse::Status,
        updated_at: Time
      }
    end
  end
end
