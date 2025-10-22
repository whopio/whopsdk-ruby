# frozen_string_literal: true

module WhopSDK
  module Models
    class CourseLessonInteractionCompletedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute data
      #   A lesson interaction tracking user progress in courses
      #
      #   @return [WhopSDK::Models::CourseLessonInteraction]
      required :data, -> { WhopSDK::CourseLessonInteraction }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"course_lesson_interaction.completed"]
      required :type, const: :"course_lesson_interaction.completed"

      # @!method initialize(id:, data:, timestamp:, api_version: :v1, type: :"course_lesson_interaction.completed")
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::CourseLessonInteraction] A lesson interaction tracking user progress in courses
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"course_lesson_interaction.completed"] The webhook event type
    end
  end
end
