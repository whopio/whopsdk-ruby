# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      module CreateTransfersRequestFeedType
        extend Whop_sdk::Internal::Types::Enum

        DMS_FEED = "dms_feed"
        CHAT_FEED = "chat_feed"
        FORUM_FEED = "forum_feed"
        LIVESTREAM_FEED = "livestream_feed"
        UNIVERSAL_POST = "universal_post"
        USER = "user"
      end
    end
  end
end
