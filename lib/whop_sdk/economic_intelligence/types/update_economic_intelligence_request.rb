# frozen_string_literal: true

module Whop_sdk
  module EconomicIntelligence
    module Types
      class UpdateEconomicIntelligenceRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::EconomicIntelligence::Types::UpdateEconomicIntelligenceRequestStatus }, optional: false, nullable: false
      end
    end
  end
end
