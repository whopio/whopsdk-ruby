# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentQuoteLocatedBy
      extend Whop_sdk::Internal::Types::Enum

      SHIPPING_ADDRESS = "shipping_address"
      ADDRESS = "address"
      PRESENTMENT_COUNTRY = "presentment_country"
      IP_ADDRESS = "ip_address"
    end
  end
end
