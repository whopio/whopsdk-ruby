# frozen_string_literal: true

module Whop_sdk
  module EconomicIntelligence
    module Types
      class ListEconomicIntelligenceResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::EconomicIntelligence] }, optional: false, nullable: false

        field :generation_pending, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::EconomicIntelligence::Types::ListEconomicIntelligenceResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
