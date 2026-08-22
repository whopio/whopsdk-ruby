# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      class StartCourseLessonsRequest < Internal::Types::Model
        field :lesson_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
