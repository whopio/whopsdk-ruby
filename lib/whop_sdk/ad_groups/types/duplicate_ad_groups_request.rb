# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class DuplicateAdGroupsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :preserve_engagement, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :target_ad_campaign_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
