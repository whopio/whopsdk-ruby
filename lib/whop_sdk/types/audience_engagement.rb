# frozen_string_literal: true

module Whop_sdk
  module Types
    class AudienceEngagement < Internal::Types::Model
      field :exclude, -> { Internal::Types::Array[Whop_sdk::Types::AudienceEngagementRule] }, optional: false, nullable: false

      field :include, -> { Internal::Types::Array[Whop_sdk::Types::AudienceEngagementRule] }, optional: false, nullable: false

      field :platform, -> { Whop_sdk::Types::AudienceEngagementPlatform }, optional: false, nullable: false
    end
  end
end
