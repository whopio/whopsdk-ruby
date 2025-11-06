# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CoursesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.courses.create(experience_id: "exp_xxxxxxxxxxxxxx", title: "title")

    assert_pattern do
      response => WhopSDK::Course
    end

    assert_pattern do
      response => {
        id: String,
        certificate_after_completion_enabled: WhopSDK::Internal::Type::Boolean | nil,
        chapters: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Course::Chapter]),
        created_at: Time,
        description: String | nil,
        language: WhopSDK::Languages,
        order: String,
        require_completing_lessons_in_order: WhopSDK::Internal::Type::Boolean,
        tagline: String | nil,
        thumbnail: WhopSDK::Course::Thumbnail | nil,
        title: String | nil,
        updated_at: Time,
        visibility: WhopSDK::Course::Visibility
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.courses.retrieve("cors_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Course
    end

    assert_pattern do
      response => {
        id: String,
        certificate_after_completion_enabled: WhopSDK::Internal::Type::Boolean | nil,
        chapters: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Course::Chapter]),
        created_at: Time,
        description: String | nil,
        language: WhopSDK::Languages,
        order: String,
        require_completing_lessons_in_order: WhopSDK::Internal::Type::Boolean,
        tagline: String | nil,
        thumbnail: WhopSDK::Course::Thumbnail | nil,
        title: String | nil,
        updated_at: Time,
        visibility: WhopSDK::Course::Visibility
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.courses.update("cors_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Course
    end

    assert_pattern do
      response => {
        id: String,
        certificate_after_completion_enabled: WhopSDK::Internal::Type::Boolean | nil,
        chapters: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Course::Chapter]),
        created_at: Time,
        description: String | nil,
        language: WhopSDK::Languages,
        order: String,
        require_completing_lessons_in_order: WhopSDK::Internal::Type::Boolean,
        tagline: String | nil,
        thumbnail: WhopSDK::Course::Thumbnail | nil,
        title: String | nil,
        updated_at: Time,
        visibility: WhopSDK::Course::Visibility
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whop.courses.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::CourseListResponse
    end

    assert_pattern do
      row => {
        id: String,
        certificate_after_completion_enabled: WhopSDK::Internal::Type::Boolean | nil,
        created_at: Time,
        description: String | nil,
        language: WhopSDK::Languages,
        order: String,
        require_completing_lessons_in_order: WhopSDK::Internal::Type::Boolean,
        tagline: String | nil,
        thumbnail: WhopSDK::Models::CourseListResponse::Thumbnail | nil,
        title: String | nil,
        updated_at: Time,
        visibility: WhopSDK::Models::CourseListResponse::Visibility
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.courses.delete("cors_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
