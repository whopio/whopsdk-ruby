# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class PostChatMessageCreatedPayloadData < Internal::Types::Model
        field :audience, -> { Whop_sdk::Messages::Types::PostChatMessageCreatedPayloadDataAudience }, optional: false, nullable: false

        field :channel, -> { Whop_sdk::Messages::Types::PostChatMessageCreatedPayloadDataChannel }, optional: false, nullable: false

        field :message, -> { Whop_sdk::Types::Message }, optional: false, nullable: false

        field :reason, -> { String }, optional: false, nullable: false
      end
    end
  end
end
