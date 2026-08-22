# frozen_string_literal: true

module Whop_sdk
  module Types
    # An individual learning unit within a chapter, which can contain text, video, PDF, or assessment content.
    class CourseChaptersItemLessonsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :lesson_type, -> { Whop_sdk::Types::LessonTypes }, optional: false, nullable: false

      field :order, -> { Integer }, optional: false, nullable: false

      field :thumbnail, -> { Whop_sdk::Types::CourseChaptersItemLessonsItemThumbnail }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false

      field :video_asset, -> { Whop_sdk::Types::CourseChaptersItemLessonsItemVideoAsset }, optional: false, nullable: true
    end
  end
end
