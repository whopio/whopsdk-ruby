# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class DuplicateAdsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :preserve_engagement, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :target_ad_group_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
