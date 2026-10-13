# frozen_string_literal: true

module Whop_sdk
  module Types
    module FinancingAccessChangeProvider
      extend Whop_sdk::Internal::Types::Enum

      KLARNA = "klarna"
      SPLITIT = "splitit"
      AFTERPAY_CLEARPAY = "afterpay_clearpay"
      ZIP = "zip"
      SEZZLE = "sezzle"
    end
  end
end
