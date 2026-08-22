# frozen_string_literal: true

module Whop_sdk
  module Types
    # A structured learning module containing chapters and lessons, belonging to an experience.
    class CourseListItem < Internal::Types::Model
      field :certificate_after_completion_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :chapters_count, -> { Integer }, optional: false, nullable: false

      field :completed_lessons_count, -> { Integer }, optional: false, nullable: false

      field :cover_image, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :language, -> { Whop_sdk::Types::Languages }, optional: false, nullable: false

      field :latest_lesson_created_at, -> { String }, optional: false, nullable: true

      field :lesson_unlock_days, -> { Internal::Types::Array[Integer] }, optional: false, nullable: false

      field :order, -> { String }, optional: false, nullable: false

      field :require_completing_lessons_in_order, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :resume_lesson, -> { Whop_sdk::Types::CourseListItemResumeLesson }, optional: false, nullable: true

      field :started_at, -> { String }, optional: false, nullable: true

      field :tagline, -> { String }, optional: false, nullable: true

      field :thumbnail, -> { Whop_sdk::Types::CourseListItemThumbnail }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true

      field :total_duration_seconds, -> { Integer }, optional: false, nullable: false

      field :total_lessons_count, -> { Integer }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :visibility, -> { Whop_sdk::Types::CourseVisibilities }, optional: false, nullable: false
    end
  end
end
