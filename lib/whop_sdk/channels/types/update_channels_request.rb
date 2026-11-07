# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      class UpdateChannelsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :icon, -> { Whop_sdk::Channels::Types::UpdateChannelsRequestIcon }, optional: true, nullable: false

        field :moderation, -> { Whop_sdk::Channels::Types::UpdateChannelsRequestModeration }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :notifications_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
