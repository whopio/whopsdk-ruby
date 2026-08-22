# frozen_string_literal: true

module Whop_sdk
  module Courses
    module Types
      # The connection type for Course.
      class ListCoursesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::CourseListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
