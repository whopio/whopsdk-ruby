# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class ListMessagesRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :channel_id, -> { String }, optional: false, nullable: false

        field :direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false
      end
    end
  end
end
