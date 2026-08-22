# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      class ListSwapsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Swaps::Types::ListSwapsResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
