# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CourseChaptersTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.course_chapters.create(course_id: "cors_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::CourseChapter
    end

    assert_pattern do
      response => {
        id: String,
        lessons: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseChapter::Lesson]),
        order: Integer,
        title: String
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.course_chapters.retrieve("chap_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::CourseChapter
    end

    assert_pattern do
      response => {
        id: String,
        lessons: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseChapter::Lesson]),
        order: Integer,
        title: String
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @whop.course_chapters.update("chap_xxxxxxxxxxxxx", title: "title")

    assert_pattern do
      response => WhopSDK::CourseChapter
    end

    assert_pattern do
      response => {
        id: String,
        lessons: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseChapter::Lesson]),
        order: Integer,
        title: String
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.course_chapters.list(course_id: "cors_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::CourseChapterListResponse
    end

    assert_pattern do
      row => {
        id: String,
        order: Integer,
        title: String
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.course_chapters.delete("chap_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
