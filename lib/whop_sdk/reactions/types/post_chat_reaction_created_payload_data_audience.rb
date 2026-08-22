# frozen_string_literal: true

module Whop_sdk
  module Reactions
    module Types
      class PostChatReactionCreatedPayloadDataAudience < Internal::Types::Model
        field :type, -> { Whop_sdk::Reactions::Types::PostChatReactionCreatedPayloadDataAudienceType }, optional: false, nullable: false

        field :user_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
