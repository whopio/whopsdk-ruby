# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      class ListSwapsResponseDataItem < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :error, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :object, -> { Whop_sdk::Swaps::Types::ListSwapsResponseDataItemObject }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Swaps::Types::ListSwapsResponseDataItemStatus }, optional: false, nullable: false

        field :tx_hashes, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
