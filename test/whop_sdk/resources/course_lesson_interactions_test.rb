# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CourseLessonInteractionsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.course_lesson_interactions.retrieve("crsli_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::CourseLessonInteraction
    end

    assert_pattern do
      response => {
        id: String,
        completed: WhopSDK::Internal::Type::Boolean,
        course: WhopSDK::CourseLessonInteraction::Course,
        created_at: Time,
        lesson: WhopSDK::CourseLessonInteraction::Lesson,
        user: WhopSDK::CourseLessonInteraction::User
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.course_lesson_interactions.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::CourseLessonInteractionListItem
    end

    assert_pattern do
      row => {
        id: String,
        completed: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        lesson: WhopSDK::CourseLessonInteractionListItem::Lesson,
        user: WhopSDK::CourseLessonInteractionListItem::User
      }
    end
  end
end
