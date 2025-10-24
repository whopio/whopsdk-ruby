# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CourseLessonsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.course_lessons.create(chapter_id: "chap_xxxxxxxxxxxxx", lesson_type: :text)

    assert_pattern do
      response => WhopSDK::Lesson
    end

    assert_pattern do
      response => {
        id: String,
        assessment_questions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::AssessmentQuestion]),
        attachments: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::Attachment]),
        content: String | nil,
        days_from_course_start_until_unlock: Integer | nil,
        lesson_type: WhopSDK::LessonTypes,
        main_pdf: WhopSDK::Lesson::MainPdf | nil,
        order: Integer,
        title: String,
        video_asset: WhopSDK::Lesson::VideoAsset | nil,
        visibility: WhopSDK::LessonVisibilities
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.course_lessons.retrieve("lesn_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Lesson
    end

    assert_pattern do
      response => {
        id: String,
        assessment_questions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::AssessmentQuestion]),
        attachments: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::Attachment]),
        content: String | nil,
        days_from_course_start_until_unlock: Integer | nil,
        lesson_type: WhopSDK::LessonTypes,
        main_pdf: WhopSDK::Lesson::MainPdf | nil,
        order: Integer,
        title: String,
        video_asset: WhopSDK::Lesson::VideoAsset | nil,
        visibility: WhopSDK::LessonVisibilities
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.course_lessons.update("lesn_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Lesson
    end

    assert_pattern do
      response => {
        id: String,
        assessment_questions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::AssessmentQuestion]),
        attachments: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::Attachment]),
        content: String | nil,
        days_from_course_start_until_unlock: Integer | nil,
        lesson_type: WhopSDK::LessonTypes,
        main_pdf: WhopSDK::Lesson::MainPdf | nil,
        order: Integer,
        title: String,
        video_asset: WhopSDK::Lesson::VideoAsset | nil,
        visibility: WhopSDK::LessonVisibilities
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whop.course_lessons.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::CourseLessonListResponse
    end

    assert_pattern do
      row => {
        id: String,
        content: String | nil,
        days_from_course_start_until_unlock: Integer | nil,
        lesson_type: WhopSDK::LessonTypes,
        order: Integer,
        title: String,
        visibility: WhopSDK::LessonVisibilities
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.course_lessons.delete("lesn_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
