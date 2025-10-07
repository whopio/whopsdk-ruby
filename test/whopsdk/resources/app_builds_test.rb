# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::AppBuildsTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.app_builds.create(attachment: {}, checksum: "checksum", platform: :ios)

    assert_pattern do
      response => Whopsdk::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: Integer,
        file_url: String,
        is_production: Whopsdk::Internal::Type::Boolean,
        platform: Whopsdk::AppBuildPlatforms,
        review_message: String | nil,
        status: Whopsdk::AppBuildStatuses,
        supported_app_view_types: ^(Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::AppViewType])
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.app_builds.retrieve("apbu_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: Integer,
        file_url: String,
        is_production: Whopsdk::Internal::Type::Boolean,
        platform: Whopsdk::AppBuildPlatforms,
        review_message: String | nil,
        status: Whopsdk::AppBuildStatuses,
        supported_app_view_types: ^(Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::AppViewType])
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.app_builds.list(app_id: "app_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::AppBuildListResponse
    end

    assert_pattern do
      row => {
        id: String,
        checksum: String,
        created_at: Integer,
        file_url: String,
        is_production: Whopsdk::Internal::Type::Boolean,
        platform: Whopsdk::AppBuildPlatforms,
        review_message: String | nil,
        status: Whopsdk::AppBuildStatuses,
        supported_app_view_types: ^(Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::AppViewType])
      }
    end
  end

  def test_promote
    skip("Prism tests are disabled")

    response = @whopsdk.app_builds.promote("apbu_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::AppBuild
    end

    assert_pattern do
      response => {
        id: String,
        checksum: String,
        created_at: Integer,
        file_url: String,
        is_production: Whopsdk::Internal::Type::Boolean,
        platform: Whopsdk::AppBuildPlatforms,
        review_message: String | nil,
        status: Whopsdk::AppBuildStatuses,
        supported_app_view_types: ^(Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::AppViewType])
      }
    end
  end
end
