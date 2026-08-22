# frozen_string_literal: true

module Whop_sdk
  module APIKeys
    module Types
      class ListAPIKeysRequest < Internal::Types::Model
        field :resource_id, -> { String }, optional: false, nullable: false

        field :resource_type, -> { Whop_sdk::APIKeys::Types::ListAPIKeysRequestResourceType }, optional: false, nullable: false

        field :created_before, -> { Whop_sdk::Types::ListAPIKeysRequestCreatedBefore }, optional: true, nullable: false

        field :created_after, -> { Whop_sdk::Types::ListAPIKeysRequestCreatedAfter }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::APIKeys::Types::ListAPIKeysRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::APIKeys::Types::ListAPIKeysRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
