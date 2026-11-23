# frozen_string_literal: true

module Whop_sdk
  module Types
    class NotificationTopic < Internal::Types::Model
      field :default_preference_value, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :email_delivery, -> { Whop_sdk::Types::NotificationTopicEmailDelivery }, optional: false, nullable: false

      field :every_channel_covers_email, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :identifier, -> { String }, optional: false, nullable: false

      field :is_mention, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :push_delivery, -> { Whop_sdk::Types::NotificationTopicPushDelivery }, optional: false, nullable: false

      field :topic_type, -> { Whop_sdk::Types::NotificationTopicTopicType }, optional: false, nullable: false
    end
  end
end
