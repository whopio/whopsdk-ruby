# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class CreateMessagesRequest < Internal::Types::Model
        field :attachments, -> { Internal::Types::Array[Whop_sdk::Messages::Types::CreateMessagesRequestAttachmentsItem] }, optional: true, nullable: false

        field :auto_detect_links, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :channel_id, -> { String }, optional: false, nullable: false

        field :content, -> { String }, optional: false, nullable: false

        field :poll, -> { Whop_sdk::Messages::Types::CreateMessagesRequestPoll }, optional: true, nullable: false

        field :replying_to_message_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
