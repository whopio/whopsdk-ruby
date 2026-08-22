# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Reserves
      module Types
        class ListReservesResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::AccountReserve] }, optional: false, nullable: false
        end
      end
    end
  end
end
