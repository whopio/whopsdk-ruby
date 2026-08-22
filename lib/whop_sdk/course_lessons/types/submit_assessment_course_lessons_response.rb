# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # The result of a user's assessment attempt
      class SubmitAssessmentCourseLessonsResponse < Internal::Types::Model
        field :created_at, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :lesson, -> { Whop_sdk::CourseLessons::Types::SubmitAssessmentCourseLessonsResponseLesson }, optional: false, nullable: false

        field :result_correct, -> { Integer }, optional: false, nullable: false

        field :result_grade, -> { Integer }, optional: false, nullable: false

        field :result_graded_questions, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :result_passing_grade, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :result_question_count, -> { Integer }, optional: false, nullable: false

        field :score_percent, -> { Integer }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false

        field :user, -> { Whop_sdk::CourseLessons::Types::SubmitAssessmentCourseLessonsResponseUser }, optional: false, nullable: false
      end
    end
  end
end
