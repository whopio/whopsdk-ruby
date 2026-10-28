# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdStat < Internal::Types::Model
      field :ad_campaign_id, -> { String }, optional: false, nullable: false

      field :ad_group_id, -> { String }, optional: false, nullable: false

      field :ad_id, -> { String }, optional: false, nullable: false

      field :clicks, -> { Integer }, optional: false, nullable: false

      field :hour_started_at, -> { String }, optional: false, nullable: false

      field :impressions, -> { Integer }, optional: false, nullable: false

      field :spend, -> { Whop_sdk::Types::Money }, optional: false, nullable: false
    end
  end
end
