# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # Optional image attachment for the question
      class UpdateCourseLessonsRequestAssessmentQuestionsItemImage < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
