# frozen_string_literal: true

module Whop_sdk
  module CourseLessonInteractions
    module Types
      class PostCourseLessonInteractionCompletedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::CourseLessonInteractions::Types::PostCourseLessonInteractionCompletedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Types::CourseLessonInteraction }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::CourseLessonInteractions::Types::PostCourseLessonInteractionCompletedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
