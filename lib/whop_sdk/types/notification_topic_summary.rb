# frozen_string_literal: true

module Whop_sdk
  module Types
    class NotificationTopicSummary < Internal::Types::Model
      field :default_preference_value, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :is_mention, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :topic_type, -> { Whop_sdk::Types::NotificationTopicSummaryTopicType }, optional: false, nullable: false
    end
  end
end
