# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChannelSupportState < Internal::Types::Model
      field :awaiting_reply, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :customer_user_id, -> { String }, optional: false, nullable: false

      field :last_message_by, -> { Whop_sdk::Types::ChannelSupportStateLastMessageBy }, optional: false, nullable: true

      field :resolved_at, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ChannelSupportStateStatus }, optional: false, nullable: false
    end
  end
end
