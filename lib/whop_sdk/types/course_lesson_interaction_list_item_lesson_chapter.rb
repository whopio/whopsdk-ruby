# frozen_string_literal: true

module Whop_sdk
  module Types
    # The parent chapter that contains this lesson.
    class CourseLessonInteractionListItemLessonChapter < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
