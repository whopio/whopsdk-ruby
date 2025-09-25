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
      response => Whopsdk::Models::CourseLessonInteractionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::CourseLessonInteractionListItem, nil?: true]) | nil,
        page_info: Whopsdk::PageInfo
      }
    end
  end
end
