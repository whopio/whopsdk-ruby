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
      #   A record of a user's progress on a specific lesson, tracking whether they have
      #   completed it.
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

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"course_lesson_interaction.completed")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent} for more
      #   details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::CourseLessonInteraction] A record of a user's progress on a specific lesson, tracking whether they have c
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"course_lesson_interaction.completed"] The webhook event type
    end
  end
end
