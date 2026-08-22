# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      class ListCourseLessonsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :course_id, -> { String }, optional: true, nullable: false

        field :chapter_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
