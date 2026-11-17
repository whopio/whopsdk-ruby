# frozen_string_literal: true

module Whop_sdk
  module Livestreams
    module Types
      class AddCoHostLivestreamsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
