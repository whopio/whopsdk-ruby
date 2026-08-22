# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class PostChatMessageCreatedPayloadDataChannel < Internal::Types::Model
        field :experience_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Messages::Types::PostChatMessageCreatedPayloadDataChannelType }, optional: false, nullable: false
      end
    end
  end
end
