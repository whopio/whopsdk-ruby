# frozen_string_literal: true

module Whop_sdk
  module Types
    # A grouping of related lessons within a course, used to organize content into sections.
    class CourseChapterListItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :order, -> { Integer }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
