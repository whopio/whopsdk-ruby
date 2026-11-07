# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class UnreactMessagesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :emoji, -> { String }, optional: false, nullable: false
      end
    end
  end
end
