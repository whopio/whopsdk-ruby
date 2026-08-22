# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      class CreateCourseLessonsRequest < Internal::Types::Model
        field :chapter_id, -> { String }, optional: false, nullable: false

        field :content, -> { String }, optional: true, nullable: false

        field :days_from_course_start_until_unlock, -> { Integer }, optional: true, nullable: false

        field :embed_id, -> { String }, optional: true, nullable: false

        field :embed_type, -> { Whop_sdk::Types::EmbedTypes }, optional: true, nullable: false

        field :lesson_type, -> { Whop_sdk::Types::LessonTypes }, optional: false, nullable: false

        field :thumbnail, -> { Whop_sdk::CourseLessons::Types::CreateCourseLessonsRequestThumbnail }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
