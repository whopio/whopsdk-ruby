# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # The thumbnail image for the lesson in PNG, JPEG, or GIF format.
      class CreateCourseLessonsRequestThumbnail < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
