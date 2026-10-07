# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountEconomicIntelligencePreviousPeriod < Internal::Types::Model
      field :ended_at, -> { String }, optional: false, nullable: false

      field :fee_percentage, -> { Integer }, optional: false, nullable: false
    end
  end
end
