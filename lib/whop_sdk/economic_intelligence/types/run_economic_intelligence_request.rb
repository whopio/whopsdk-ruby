# frozen_string_literal: true

module Whop_sdk
  module EconomicIntelligence
    module Types
      class RunEconomicIntelligenceRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :input, -> { String }, optional: false, nullable: false
      end
    end
  end
end
