# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class ListCardsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Cards::Types::ListCardsResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
