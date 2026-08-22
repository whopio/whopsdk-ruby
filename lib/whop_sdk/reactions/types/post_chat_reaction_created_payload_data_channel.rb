# frozen_string_literal: true

module Whop_sdk
  module Reactions
    module Types
      class PostChatReactionCreatedPayloadDataChannel < Internal::Types::Model
        field :experience_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Reactions::Types::PostChatReactionCreatedPayloadDataChannelType }, optional: false, nullable: false
      end
    end
  end
end
