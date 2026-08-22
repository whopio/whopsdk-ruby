# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # The passing criteria for quiz or knowledge check lessons, such as minimum grade or correct answers.
      class UpdateCourseLessonsRequestAssessmentCompletionRequirement < Internal::Types::Model
        field :minimum_grade_percent, -> { Integer }, optional: true, nullable: false

        field :minimum_questions_correct, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
