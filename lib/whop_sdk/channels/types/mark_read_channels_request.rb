# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      class MarkReadChannelsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :last_viewed_at, -> { String }, optional: true, nullable: false

        field :viewed_message_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
