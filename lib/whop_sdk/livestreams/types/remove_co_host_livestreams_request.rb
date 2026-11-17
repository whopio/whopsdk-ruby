# frozen_string_literal: true

module Whop_sdk
  module Livestreams
    module Types
      class RemoveCoHostLivestreamsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
