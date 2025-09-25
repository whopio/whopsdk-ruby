# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::CourseLessonInteractionsTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.course_lesson_interactions.retrieve("crsli_xxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::CourseLessonInteraction
    end

    assert_pattern do
      response => {
        id: String,
        completed: Whopsdk::Internal::Type::Boolean,
        created_at: Integer,
        lesson: Whopsdk::CourseLessonInteraction::Lesson,
        user: Whopsdk::CourseLessonInteraction::User
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whopsdk.course_lesson_interactions.list

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::CourseLessonInteractionListItem
    end

    assert_pattern do
      row => {
        id: String,
        completed: Whopsdk::Internal::Type::Boolean,
        created_at: Integer,
        lesson: Whopsdk::CourseLessonInteractionListItem::Lesson,
        user: Whopsdk::CourseLessonInteractionListItem::User
      }
    end
  end
end
