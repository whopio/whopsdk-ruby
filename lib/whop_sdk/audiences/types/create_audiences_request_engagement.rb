# frozen_string_literal: true

module Whop_sdk
  module Audiences
    module Types
      # Rules for membership based on social engagement. Requires a connected social account with advertising access.
      class CreateAudiencesRequestEngagement < Internal::Types::Model
        field :exclude, -> { Internal::Types::Array[Whop_sdk::Types::AudienceEngagementRule] }, optional: true, nullable: false

        field :include, -> { Internal::Types::Array[Whop_sdk::Types::AudienceEngagementRule] }, optional: false, nullable: false

        field :platform, -> { Whop_sdk::Audiences::Types::CreateAudiencesRequestEngagementPlatform }, optional: false, nullable: false
      end
    end
  end
end
