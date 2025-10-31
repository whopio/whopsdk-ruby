# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AppBuildsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.app_builds.create(attachment: {}, checksum: "checksum", platform: :ios)

    assert_pattern do
      response => WhopSDK::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: Time,
        file_url: String,
        is_production: WhopSDK::Internal::Type::Boolean,
        platform: WhopSDK::AppBuildPlatforms,
        review_message: String | nil,
        status: WhopSDK::AppBuildStatuses,
        supported_app_view_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppViewType])
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.app_builds.retrieve("apbu_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: Time,
        file_url: String,
        is_production: WhopSDK::Internal::Type::Boolean,
        platform: WhopSDK::AppBuildPlatforms,
        review_message: String | nil,
        status: WhopSDK::AppBuildStatuses,
        supported_app_view_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppViewType])
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.app_builds.list(app_id: "app_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AppBuildListResponse
    end

    assert_pattern do
      row => {
        id: String,
        checksum: String,
        created_at: Time,
        file_url: String,
        is_production: WhopSDK::Internal::Type::Boolean,
        platform: WhopSDK::AppBuildPlatforms,
        review_message: String | nil,
        status: WhopSDK::AppBuildStatuses,
        supported_app_view_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppViewType])
      }
    end
  end

  def test_promote
    skip("Prism tests are disabled")

    response = @whop.app_builds.promote("apbu_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: Time,
        file_url: String,
        is_production: WhopSDK::Internal::Type::Boolean,
        platform: WhopSDK::AppBuildPlatforms,
        review_message: String | nil,
        status: WhopSDK::AppBuildStatuses,
        supported_app_view_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppViewType])
      }
    end
  end
end
