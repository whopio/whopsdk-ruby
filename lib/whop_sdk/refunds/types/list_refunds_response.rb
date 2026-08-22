# frozen_string_literal: true

module Whop_sdk
  module Refunds
    module Types
      # The connection type for Refund.
      class ListRefundsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::RefundListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
