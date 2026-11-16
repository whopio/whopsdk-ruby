# frozen_string_literal: true

module Whop_sdk
  module Livestreams
    module Types
      class PinLivestreamsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :experience_id, -> { String }, optional: true, nullable: false

        field :position, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
