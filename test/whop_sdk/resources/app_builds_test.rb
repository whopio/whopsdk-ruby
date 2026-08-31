# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AppBuildsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.app_builds.create(attachment: {}, checksum: "xxxxxxxxxxxxxxx", platform: :web)

    assert_pattern do
      response => WhopSDK::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: String,
        file_url: String | nil,
        is_production: WhopSDK::Internal::Type::Boolean,
        platform: WhopSDK::AppBuild::Platform,
        review_message: String | nil,
        source_url: String | nil,
        status: WhopSDK::AppBuild::Status,
        supported_app_view_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppBuild::SupportedAppViewType])
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.app_builds.retrieve("id")

    assert_pattern do
      response => WhopSDK::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: String,
        file_url: String | nil,
        is_production: WhopSDK::Internal::Type::Boolean,
        platform: WhopSDK::AppBuild::Platform,
        review_message: String | nil,
        source_url: String | nil,
        status: WhopSDK::AppBuild::Status,
        supported_app_view_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppBuild::SupportedAppViewType])
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.app_builds.list(app_id: "app_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::AppBuild
    end

    assert_pattern do
      row => {
        id: String,
        checksum: String,
        created_at: String,
        file_url: String | nil,
        is_production: WhopSDK::Internal::Type::Boolean,
        platform: WhopSDK::AppBuild::Platform,
        review_message: String | nil,
        source_url: String | nil,
        status: WhopSDK::AppBuild::Status,
        supported_app_view_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppBuild::SupportedAppViewType])
      }
    end
  end

  def test_promote
    skip("Mock server tests are disabled")

    response = @whop.app_builds.promote("id")

    assert_pattern do
      response => WhopSDK::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: String,
        file_url: String | nil,
        is_production: WhopSDK::Internal::Type::Boolean,
        platform: WhopSDK::AppBuild::Platform,
        review_message: String | nil,
        source_url: String | nil,
        status: WhopSDK::AppBuild::Status,
        supported_app_view_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AppBuild::SupportedAppViewType])
      }
    end
  end
end
