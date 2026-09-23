# frozen_string_literal: true

module Whop_sdk
  module EconomicIntelligence
    module Types
      class UpdateEconomicIntelligenceRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :input, -> { String }, optional: true, nullable: false

        field :sentiment, -> { Whop_sdk::EconomicIntelligence::Types::UpdateEconomicIntelligenceRequestSentiment }, optional: true, nullable: false

        field :status, -> { Whop_sdk::EconomicIntelligence::Types::UpdateEconomicIntelligenceRequestStatus }, optional: true, nullable: false

        field :user_feedback, -> { String }, optional: true, nullable: false
      end
    end
  end
end
