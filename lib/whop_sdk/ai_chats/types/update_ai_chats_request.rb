# frozen_string_literal: true

module Whop_sdk
  module AiChats
    module Types
      class UpdateAiChatsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :current_account_id, -> { String }, optional: true, nullable: false

        field :notification_preference, -> { Whop_sdk::Types::AiChatNotificationPreferences }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
