# frozen_string_literal: true

module Whop_sdk
  module Courses
    module Types
      # Input for updating a lesson while updating a course
      class UpdateCoursesRequestChaptersItemLessonsItem < Internal::Types::Model
        field :chapter_id, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :order, -> { Integer }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
