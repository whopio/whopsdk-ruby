# frozen_string_literal: true

module Whop_sdk
  module Types
    # The lesson that this progress record belongs to.
    class CourseLessonInteractionListItemLesson < Internal::Types::Model
      field :chapter, -> { Whop_sdk::Types::CourseLessonInteractionListItemLessonChapter }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
