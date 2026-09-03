# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class ListPaymentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Payment] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Payments::Types::ListPaymentsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
