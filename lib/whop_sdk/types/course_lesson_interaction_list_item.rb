# frozen_string_literal: true

module Whop_sdk
  module Types
    # A record of a user's progress on a specific lesson, tracking whether they have completed it.
    class CourseLessonInteractionListItem < Internal::Types::Model
      field :completed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :lesson, -> { Whop_sdk::Types::CourseLessonInteractionListItemLesson }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::CourseLessonInteractionListItemUser }, optional: false, nullable: false
    end
  end
end
