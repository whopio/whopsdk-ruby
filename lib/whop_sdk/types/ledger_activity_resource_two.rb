# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceTwo < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::LedgerActivityResourceTwoObject }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
