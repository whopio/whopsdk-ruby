# frozen_string_literal: true

module Whop_sdk
  module Types
    # The lesson the current user should continue from: their first incomplete lesson, or the first lesson when they
    # have finished the course, have not started it, or can edit it. Null if the course has no lessons.
    class CourseListItemResumeLesson < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
