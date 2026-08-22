# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # Input for creating or updating an assessment question option
      class UpdateCourseLessonsRequestAssessmentQuestionsItemOptionsItem < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :is_correct, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :option_text, -> { String }, optional: false, nullable: false
      end
    end
  end
end
