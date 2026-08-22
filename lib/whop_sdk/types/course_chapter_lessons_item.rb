# frozen_string_literal: true

module Whop_sdk
  module Types
    # An individual learning unit within a chapter, which can contain text, video, PDF, or assessment content.
    class CourseChapterLessonsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :order, -> { Integer }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
