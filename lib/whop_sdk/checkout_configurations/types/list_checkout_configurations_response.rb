# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      class ListCheckoutConfigurationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
