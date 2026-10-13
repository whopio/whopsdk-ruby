# frozen_string_literal: true

module Whop_sdk
  module Types
    # Represents a GIF attachment in a feed post
    class SupportChannelLastMessageGifsItem < Internal::Types::Model
      field :slug, -> { String }, optional: false, nullable: false
    end
  end
end
