# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CourseStudentsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.course_students.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::CourseStudentRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        completed_lessons_count: Integer,
        completion_rate: Float,
        course: WhopSDK::Models::CourseStudentRetrieveResponse::Course,
        first_interaction_at: Time,
        last_interaction_at: Time,
        total_lessons_count: Integer,
        user: WhopSDK::Models::CourseStudentRetrieveResponse::User
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.course_students.list(course_id: "cors_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::CourseStudentListResponse
    end

    assert_pattern do
      row => {
        id: String,
        completed_lessons_count: Integer,
        completion_rate: Float,
        first_interaction_at: Time,
        last_interaction_at: Time,
        total_lessons_count: Integer,
        user: WhopSDK::Models::CourseStudentListResponse::User
      }
    end
  end
end
