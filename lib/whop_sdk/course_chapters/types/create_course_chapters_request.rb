# frozen_string_literal: true

module Whop_sdk
  module CourseChapters
    module Types
      class CreateCourseChaptersRequest < Internal::Types::Model
        field :course_id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
