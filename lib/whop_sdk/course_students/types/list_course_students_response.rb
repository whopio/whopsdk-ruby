# frozen_string_literal: true

module Whop_sdk
  module CourseStudents
    module Types
      # The connection type for CourseStudentType.
      class ListCourseStudentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::CourseStudentListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
