# frozen_string_literal: true

module Whop_sdk
  module Types
    # The user whose progress is being tracked.
    class CourseLessonInteractionUser < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: false
    end
  end
end
