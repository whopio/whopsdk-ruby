# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class ListPayoutsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Payouts::Types::ListPayoutsResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Payouts::Types::ListPayoutsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
