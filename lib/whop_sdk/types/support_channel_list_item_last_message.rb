# frozen_string_literal: true

module Whop_sdk
  module Types
    # The most recent message in this channel. Null if no messages have been sent, or when listing support channels
    # without `include_last_message`.
    class SupportChannelListItemLastMessage < Internal::Types::Model
      field :attachments, -> { Internal::Types::Array[Whop_sdk::Types::SupportChannelListItemLastMessageAttachmentsItem] }, optional: false, nullable: false

      field :content, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :gifs, -> { Internal::Types::Array[Whop_sdk::Types::SupportChannelListItemLastMessageGifsItem] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :poll, -> { Whop_sdk::Types::SupportChannelListItemLastMessagePoll }, optional: false, nullable: true

      field :user_id, -> { String }, optional: false, nullable: false
    end
  end
end
