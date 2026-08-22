# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      class SubmitAssessmentCourseLessonsRequest < Internal::Types::Model
        field :lesson_id, -> { String }, optional: false, nullable: false

        field :answers, -> { Internal::Types::Array[Whop_sdk::CourseLessons::Types::SubmitAssessmentCourseLessonsRequestAnswersItem] }, optional: false, nullable: false
      end
    end
  end
end
