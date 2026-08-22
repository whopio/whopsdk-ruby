# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceOwner < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::LedgerActivityResourceOwnerObject }, optional: false, nullable: false

      field :owner, -> { Whop_sdk::Types::LedgerActivityResourceOwnerOwner }, optional: false, nullable: true
    end
  end
end
