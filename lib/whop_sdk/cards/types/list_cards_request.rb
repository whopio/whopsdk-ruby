# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class ListCardsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
