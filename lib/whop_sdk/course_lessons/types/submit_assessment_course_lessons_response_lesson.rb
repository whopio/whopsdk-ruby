# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # The lesson this assessment result is for
      class SubmitAssessmentCourseLessonsResponseLesson < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
