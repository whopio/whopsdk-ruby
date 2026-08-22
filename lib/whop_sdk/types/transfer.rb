# frozen_string_literal: true

module Whop_sdk
  module Types
    class Transfer < Internal::Types::Model
      field :origin, -> { Whop_sdk::Types::TransferOrigin }, optional: true, nullable: false

      field :destination, -> { Whop_sdk::Types::TransferDestination }, optional: true, nullable: false
    end
  end
end
