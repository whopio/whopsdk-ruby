# frozen_string_literal: true

module Whop_sdk
  module Types
    # The user who owns this AI chat conversation.
    class AiChatListItemUser < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
