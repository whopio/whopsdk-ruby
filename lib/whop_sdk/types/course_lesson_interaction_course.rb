# frozen_string_literal: true

module Whop_sdk
  module Types
    # The course that contains the tracked lesson.
    class CourseLessonInteractionCourse < Internal::Types::Model
      field :experience, -> { Whop_sdk::Types::CourseLessonInteractionCourseExperience }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true
    end
  end
end
