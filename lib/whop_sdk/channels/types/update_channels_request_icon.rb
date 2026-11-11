# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      # Channel icon as a file reference, for community channels and group private channels. Image files only. Group
      # icons can be up to 5 MB. For community channels it sets the experience logo, and `null` restores the app icon.
      # For group private channels it sets the channel's own icon, and `null` clears it. Omit to keep the current icon.
      class UpdateChannelsRequestIcon < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
