# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # Input for creating or updating an assessment question
      class UpdateCourseLessonsRequestAssessmentQuestionsItem < Internal::Types::Model
        field :correct_answer, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :image, -> { Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestAssessmentQuestionsItemImage }, optional: true, nullable: false

        field :options, -> { Internal::Types::Array[Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestAssessmentQuestionsItemOptionsItem] }, optional: true, nullable: false

        field :question_text, -> { String }, optional: false, nullable: false

        field :question_type, -> { Whop_sdk::Types::CoursesAssessmentQuestionTypes }, optional: false, nullable: false
      end
    end
  end
end
