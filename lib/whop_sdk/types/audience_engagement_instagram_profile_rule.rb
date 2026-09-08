# frozen_string_literal: true

module Whop_sdk
  module Types
    class AudienceEngagementInstagramProfileRule < Internal::Types::Model
      field :event, -> { Whop_sdk::Types::AudienceEngagementInstagramProfileRuleEvent }, optional: false, nullable: false

      field :retention_days, -> { Integer }, optional: false, nullable: false

      field :social_account_id, -> { String }, optional: false, nullable: false
    end
  end
end
