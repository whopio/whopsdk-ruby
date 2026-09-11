# frozen_string_literal: true

module Whop_sdk
  module EconomicIntelligence
    module Types
      class ListEconomicIntelligenceRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::EconomicIntelligence::Types::ListEconomicIntelligenceRequestStatus }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
