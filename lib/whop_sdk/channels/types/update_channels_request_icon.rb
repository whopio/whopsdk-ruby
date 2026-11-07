# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      # Community channels only. File reference for the experience logo; `null` clears it and restores the app icon
      # fallback. Omit to preserve the current logo.
      class UpdateChannelsRequestIcon < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
