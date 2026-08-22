# frozen_string_literal: true

module Whop_sdk
  module Types
    # An individual learning unit within a chapter, which can contain text, video, PDF, or assessment content.
    class CourseLesson < Internal::Types::Model
      field :assessment_questions, -> { Internal::Types::Array[Whop_sdk::Types::CourseLessonAssessmentQuestionsItem] }, optional: false, nullable: false

      field :attachments, -> { Internal::Types::Array[Whop_sdk::Types::CourseLessonAttachmentsItem] }, optional: false, nullable: false

      field :content, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :days_from_course_start_until_unlock, -> { Integer }, optional: false, nullable: true

      field :embed_id, -> { String }, optional: false, nullable: true

      field :embed_type, -> { Whop_sdk::Types::EmbedTypes }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :lesson_type, -> { Whop_sdk::Types::LessonTypes }, optional: false, nullable: false

      field :main_pdf, -> { Whop_sdk::Types::CourseLessonMainPdf }, optional: false, nullable: true

      field :order, -> { Integer }, optional: false, nullable: false

      field :thumbnail, -> { Whop_sdk::Types::CourseLessonThumbnail }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false

      field :video_asset, -> { Whop_sdk::Types::CourseLessonVideoAsset }, optional: false, nullable: true

      field :visibility, -> { Whop_sdk::Types::LessonVisibilities }, optional: false, nullable: false
    end
  end
end
