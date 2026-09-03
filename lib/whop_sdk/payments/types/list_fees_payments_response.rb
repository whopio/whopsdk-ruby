# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class ListFeesPaymentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::PaymentFee] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Payments::Types::ListFeesPaymentsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
