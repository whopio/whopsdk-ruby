# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      class UpdateCourseLessonsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :assessment_completion_requirement, -> { Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestAssessmentCompletionRequirement }, optional: true, nullable: false

        field :assessment_questions, -> { Internal::Types::Array[Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestAssessmentQuestionsItem] }, optional: true, nullable: false

        field :attachments, -> { Internal::Types::Array[Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestAttachmentsItem] }, optional: true, nullable: false

        field :content, -> { String }, optional: true, nullable: false

        field :days_from_course_start_until_unlock, -> { Integer }, optional: true, nullable: false

        field :embed_id, -> { String }, optional: true, nullable: false

        field :embed_type, -> { Whop_sdk::Types::EmbedTypes }, optional: true, nullable: false

        field :lesson_type, -> { Whop_sdk::Types::LessonTypes }, optional: true, nullable: false

        field :main_pdf, -> { Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestMainPdf }, optional: true, nullable: false

        field :max_attempts, -> { Integer }, optional: true, nullable: false

        field :mux_asset_id, -> { String }, optional: true, nullable: false

        field :thumbnail, -> { Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestThumbnail }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :visibility, -> { Whop_sdk::Types::LessonVisibilities }, optional: true, nullable: false
      end
    end
  end
end
