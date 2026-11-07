# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      class PinChannelsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :position, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
