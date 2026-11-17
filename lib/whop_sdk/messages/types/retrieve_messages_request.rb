# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class RetrieveMessagesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :include_replying_to_message, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
