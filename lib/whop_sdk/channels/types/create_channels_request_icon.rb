# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      # Channel icon as a file reference, for community channels and private channels with two or more participant IDs.
      # Image files only. Group icons can be up to 5 MB. For community channels it sets the experience logo. Used only
      # when a channel is created.
      class CreateChannelsRequestIcon < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
