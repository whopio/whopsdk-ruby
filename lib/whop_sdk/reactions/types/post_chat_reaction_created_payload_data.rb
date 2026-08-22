# frozen_string_literal: true

module Whop_sdk
  module Reactions
    module Types
      class PostChatReactionCreatedPayloadData < Internal::Types::Model
        field :audience, -> { Whop_sdk::Reactions::Types::PostChatReactionCreatedPayloadDataAudience }, optional: false, nullable: false

        field :channel, -> { Whop_sdk::Reactions::Types::PostChatReactionCreatedPayloadDataChannel }, optional: false, nullable: false

        field :message, -> { Whop_sdk::Types::Message }, optional: false, nullable: false

        field :reaction, -> { Whop_sdk::Types::Reaction }, optional: false, nullable: false

        field :reason, -> { String }, optional: false, nullable: false
      end
    end
  end
end
