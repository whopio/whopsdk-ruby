# frozen_string_literal: true

module Whop_sdk
  module CourseStudents
    module Types
      class ListCourseStudentsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :course_id, -> { String }, optional: false, nullable: false

        field :keyword, -> { String }, optional: true, nullable: false
      end
    end
  end
end
