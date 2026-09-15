# frozen_string_literal: true

module Whop_sdk
  module Types
    class PartnerPayoutRate < Internal::Types::Model
      field :income_source, -> { Whop_sdk::Types::PartnerPayoutRateIncomeSource }, optional: false, nullable: false

      field :percentage, -> { Integer }, optional: false, nullable: false
    end
  end
end
