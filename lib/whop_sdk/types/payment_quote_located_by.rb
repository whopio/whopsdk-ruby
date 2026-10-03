# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentQuoteLocatedBy
      extend Whop_sdk::Internal::Types::Enum

      SHIPPING_ADDRESS = "shipping_address"
      ADDRESS = "address"
      IP_ADDRESS = "ip_address"
    end
  end
end
