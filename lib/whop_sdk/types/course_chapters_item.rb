# frozen_string_literal: true

module Whop_sdk
  module Types
    # A grouping of related lessons within a course, used to organize content into sections.
    class CourseChaptersItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :lessons, -> { Internal::Types::Array[Whop_sdk::Types::CourseChaptersItemLessonsItem] }, optional: false, nullable: false

      field :order, -> { Integer }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
