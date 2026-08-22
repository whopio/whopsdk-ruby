# frozen_string_literal: true

module Whop_sdk
  module Withdrawals
    module Types
      # The connection type for PublicWithdrawal.
      class ListWithdrawalsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::WithdrawalListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
