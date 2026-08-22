# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class DeleteMessagesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
