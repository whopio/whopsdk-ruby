# frozen_string_literal: true

module Whop_sdk
  module Types
    class APIKeyGrant < Internal::Types::Model
      field :actions, -> { Internal::Types::Array[Whop_sdk::Types::APIKeyGrantAction] }, optional: false, nullable: false

      field :resource_id, -> { String }, optional: false, nullable: false

      field :resource_type, -> { String }, optional: false, nullable: false
    end
  end
end
