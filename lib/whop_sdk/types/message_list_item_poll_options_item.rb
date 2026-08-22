# frozen_string_literal: true

module Whop_sdk
  module Types
    # Represents a single poll option
    class MessageListItemPollOptionsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
