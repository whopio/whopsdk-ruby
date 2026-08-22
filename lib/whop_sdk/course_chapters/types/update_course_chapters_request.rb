# frozen_string_literal: true

module Whop_sdk
  module CourseChapters
    module Types
      class UpdateCourseChaptersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
