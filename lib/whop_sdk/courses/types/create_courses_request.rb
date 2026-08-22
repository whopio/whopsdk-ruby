# frozen_string_literal: true

module Whop_sdk
  module Courses
    module Types
      class CreateCoursesRequest < Internal::Types::Model
        field :certificate_after_completion_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :experience_id, -> { String }, optional: false, nullable: false

        field :order, -> { String }, optional: true, nullable: false

        field :require_completing_lessons_in_order, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :tagline, -> { String }, optional: true, nullable: false

        field :thumbnail, -> { Whop_sdk::Courses::Types::CreateCoursesRequestThumbnail }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :visibility, -> { Whop_sdk::Types::CourseVisibilities }, optional: true, nullable: false
      end
    end
  end
end
