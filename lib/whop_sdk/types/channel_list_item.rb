# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChannelListItem < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :experience_id, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :kind, -> { Whop_sdk::Types::ChannelListItemKind }, optional: false, nullable: false

      field :last_message, -> { Whop_sdk::Types::ChatMessage }, optional: true, nullable: false

      field :last_message_at, -> { String }, optional: false, nullable: true

      field :last_message_id, -> { String }, optional: false, nullable: true

      field :members, -> { Internal::Types::Array[Whop_sdk::Types::ChannelMember] }, optional: true, nullable: false

      field :membership, -> { Whop_sdk::Types::ChannelMember }, optional: false, nullable: true

      field :moderation, -> { Whop_sdk::Types::ChannelModeration }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :support, -> { Whop_sdk::Types::ChannelSupportState }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
