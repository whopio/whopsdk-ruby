# frozen_string_literal: true

module Whop_sdk
  module Types
    # The parent experience that this course belongs to.
    class CourseLessonInteractionCourseExperience < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
