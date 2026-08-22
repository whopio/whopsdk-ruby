# frozen_string_literal: true

module Whop_sdk
  module Types
    # The experience this chat feed is attached to.
    class ChatChannelListItemExperience < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
