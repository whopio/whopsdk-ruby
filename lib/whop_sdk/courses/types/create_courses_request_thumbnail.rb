# frozen_string_literal: true

module Whop_sdk
  module Courses
    module Types
      # The thumbnail image for the course in PNG, JPEG, or GIF format.
      class CreateCoursesRequestThumbnail < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
