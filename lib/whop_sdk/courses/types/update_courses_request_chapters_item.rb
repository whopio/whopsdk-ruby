# frozen_string_literal: true

module Whop_sdk
  module Courses
    module Types
      # Input for updating a chapter while updating a course
      class UpdateCoursesRequestChaptersItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :lessons, -> { Internal::Types::Array[Whop_sdk::Courses::Types::UpdateCoursesRequestChaptersItemLessonsItem] }, optional: true, nullable: false

        field :order, -> { Integer }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
