# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      module PostChatMessageCreatedPayloadDataChannelType
        extend Whop_sdk::Internal::Types::Enum

        CHAT = "chat"
        DIRECT_MESSAGE = "direct_message"
        SUPPORT = "support"
      end
    end
  end
end
