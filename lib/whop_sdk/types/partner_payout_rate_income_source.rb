# frozen_string_literal: true

module Whop_sdk
  module Types
    module PartnerPayoutRateIncomeSource
      extend Whop_sdk::Internal::Types::Enum

      SALES = "sales"
      TRANSFER = "transfer"
      CARD_INTERCHANGE = "card_interchange"
      AD_SPEND = "ad_spend"
    end
  end
end
