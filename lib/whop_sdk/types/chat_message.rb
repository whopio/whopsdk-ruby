# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChatMessage < Internal::Types::Model
      field :attachments, -> { Internal::Types::Array[Whop_sdk::Types::File] }, optional: false, nullable: false

      field :author, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true

      field :author_user_id, -> { String }, optional: false, nullable: true

      field :channel_id, -> { String }, optional: false, nullable: false

      field :content, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :custom_author, -> { Whop_sdk::Types::MessageCustomAuthor }, optional: false, nullable: true

      field :deleted_at, -> { String }, optional: false, nullable: true

      field :edited, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :embeds, -> { Internal::Types::Array[Whop_sdk::Types::Embed] }, optional: false, nullable: false

      field :gifs, -> { Internal::Types::Array[Whop_sdk::Types::Gif] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :link_previews, -> { Internal::Types::Array[Whop_sdk::Types::MessageLinkPreview] }, optional: false, nullable: false

      field :mentioned_user_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :message_type, -> { Whop_sdk::Types::ChatMessageMessageType }, optional: false, nullable: false

      field :pinned, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :poll, -> { Whop_sdk::Types::ChatMessagePoll }, optional: false, nullable: true

      field :reaction_counts, -> { Internal::Types::Array[Whop_sdk::Types::MessageReactionCount] }, optional: false, nullable: false

      field :replying_to_message_id, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :view_count, -> { Integer }, optional: false, nullable: true
    end
  end
end
