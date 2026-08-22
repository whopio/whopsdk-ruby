# frozen_string_literal: true

module Whop_sdk
  module Courses
    module Types
      class UpdateCoursesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :certificate_after_completion_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :chapters, -> { Internal::Types::Array[Whop_sdk::Courses::Types::UpdateCoursesRequestChaptersItem] }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :language, -> { Whop_sdk::Types::Languages }, optional: true, nullable: false

        field :order, -> { String }, optional: true, nullable: false

        field :require_completing_lessons_in_order, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :tagline, -> { String }, optional: true, nullable: false

        field :thumbnail, -> { Whop_sdk::Courses::Types::UpdateCoursesRequestThumbnail }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :visibility, -> { Whop_sdk::Types::CourseVisibilities }, optional: true, nullable: false
      end
    end
  end
end
