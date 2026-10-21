# frozen_string_literal: true

module Whop_sdk
  module Livestreams
    module Types
      class ListLivestreamsRequest < Internal::Types::Model
        field :experience_id, -> { String }, optional: false, nullable: false

        field :pinned, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :recorded, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
