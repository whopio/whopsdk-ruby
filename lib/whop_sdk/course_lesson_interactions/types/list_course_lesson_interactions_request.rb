# frozen_string_literal: true

module Whop_sdk
  module CourseLessonInteractions
    module Types
      class ListCourseLessonInteractionsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :lesson_id, -> { String }, optional: true, nullable: false

        field :course_id, -> { String }, optional: true, nullable: false

        field :completed, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
