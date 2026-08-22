# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # The primary PDF document attached to this lesson for student reference.
      class UpdateCourseLessonsRequestMainPdf < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
