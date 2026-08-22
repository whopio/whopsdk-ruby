# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # The connection type for Fee.
      class ListFeesPaymentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Payments::Types::ListFeesPaymentsResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
