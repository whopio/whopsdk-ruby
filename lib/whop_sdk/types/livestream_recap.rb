# frozen_string_literal: true

module Whop_sdk
  module Types
    class LivestreamRecap < Internal::Types::Model
      field :chat, -> { Whop_sdk::Types::LivestreamRecapChat }, optional: false, nullable: true

      field :moments, -> { Internal::Types::Array[Whop_sdk::Types::LivestreamRecapMoment] }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::LivestreamRecapStatus }, optional: false, nullable: false
    end
  end
end
