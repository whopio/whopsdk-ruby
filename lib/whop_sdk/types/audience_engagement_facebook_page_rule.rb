# frozen_string_literal: true

module Whop_sdk
  module Types
    class AudienceEngagementFacebookPageRule < Internal::Types::Model
      field :event, -> { Whop_sdk::Types::AudienceEngagementFacebookPageRuleEvent }, optional: false, nullable: false

      field :retention_days, -> { Integer }, optional: false, nullable: false

      field :social_account_id, -> { String }, optional: false, nullable: false
    end
  end
end
