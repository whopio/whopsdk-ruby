# frozen_string_literal: true

module Whop_sdk
  module Types
    class Notification < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::NotificationAccount }, optional: false, nullable: true

      field :attachment_url, -> { String }, optional: false, nullable: false

      field :content, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :experience, -> { Whop_sdk::Types::NotificationExperience }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :iframe_link, -> { String }, optional: false, nullable: true

      field :link, -> { String }, optional: false, nullable: true

      field :mentions_me, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :rest_path, -> { String }, optional: false, nullable: true

      field :sender, -> { Whop_sdk::Types::NotificationSender }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: false

      field :topic, -> { Whop_sdk::Types::NotificationTopicSummary }, optional: false, nullable: true
    end
  end
end
