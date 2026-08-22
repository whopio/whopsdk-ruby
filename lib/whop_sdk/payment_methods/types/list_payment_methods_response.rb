# frozen_string_literal: true

module Whop_sdk
  module PaymentMethods
    module Types
      # The connection type for PaymentMethodInterface.
      class ListPaymentMethodsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
