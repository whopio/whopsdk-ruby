# frozen_string_literal: true

module Whop_sdk
  module Refunds
    module Types
      class ListRefundsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Refund] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Refunds::Types::ListRefundsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
