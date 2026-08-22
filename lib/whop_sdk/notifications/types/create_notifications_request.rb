# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Types
      class CreateNotificationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :content, -> { String }, optional: false, nullable: false

        field :experience_id, -> { String }, optional: true, nullable: false

        field :icon_user_id, -> { String }, optional: true, nullable: false

        field :rest_path, -> { String }, optional: true, nullable: false

        field :subtitle, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :user_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
