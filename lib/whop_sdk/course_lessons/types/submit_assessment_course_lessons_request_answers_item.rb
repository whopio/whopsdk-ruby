# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # Input for a single question's answer in an assessment submission
      class SubmitAssessmentCourseLessonsRequestAnswersItem < Internal::Types::Model
        field :answer_text, -> { String }, optional: true, nullable: false

        field :question_id, -> { String }, optional: false, nullable: false

        field :selected_option_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
