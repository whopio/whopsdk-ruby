# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      class ListSwapsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
