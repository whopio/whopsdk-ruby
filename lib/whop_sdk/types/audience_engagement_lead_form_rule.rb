# frozen_string_literal: true

module Whop_sdk
  module Types
    class AudienceEngagementLeadFormRule < Internal::Types::Model
      field :event, -> { Whop_sdk::Types::AudienceEngagementLeadFormRuleEvent }, optional: false, nullable: false

      field :platform_form_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :retention_days, -> { Integer }, optional: false, nullable: false

      field :social_account_id, -> { String }, optional: false, nullable: false
    end
  end
end
