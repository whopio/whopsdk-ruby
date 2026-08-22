# frozen_string_literal: true

module Whop_sdk
  module Types
    # The course this student is enrolled in.
    class CourseStudentCourse < Internal::Types::Model
      field :experience, -> { Whop_sdk::Types::CourseStudentCourseExperience }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true
    end
  end
end
