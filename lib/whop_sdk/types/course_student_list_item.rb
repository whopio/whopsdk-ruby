# frozen_string_literal: true

module Whop_sdk
  module Types
    # An enrollment record for a student in a course, including progress and completion metrics.
    class CourseStudentListItem < Internal::Types::Model
      field :completed_lessons_count, -> { Integer }, optional: false, nullable: false

      field :completion_rate, -> { Integer }, optional: false, nullable: false

      field :first_interaction_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :last_interaction_at, -> { String }, optional: false, nullable: false

      field :total_lessons_count, -> { Integer }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::CourseStudentListItemUser }, optional: false, nullable: false
    end
  end
end
