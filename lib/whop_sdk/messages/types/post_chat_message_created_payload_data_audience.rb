# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class PostChatMessageCreatedPayloadDataAudience < Internal::Types::Model
        field :type, -> { Whop_sdk::Messages::Types::PostChatMessageCreatedPayloadDataAudienceType }, optional: false, nullable: false

        field :user_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
