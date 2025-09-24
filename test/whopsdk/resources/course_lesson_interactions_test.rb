# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::CourseLessonInteractionsTest < Whopsdk::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @whopsdk.course_lesson_interactions.list

    assert_pattern do
      response => Whopsdk::Models::CourseLessonInteractionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::CourseLessonInteractionListResponse::Data, nil?: true]) | nil,
        page_info: Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo
      }
    end
  end
end
