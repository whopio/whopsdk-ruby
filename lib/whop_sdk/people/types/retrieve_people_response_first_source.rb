# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      # Where a visit came from: a whop ad click, a lead form, an external ad, or a referring site.
      class RetrievePeopleResponseFirstSource < Internal::Types::Model
        field :ad, -> { Whop_sdk::People::Types::RetrievePeopleResponseFirstSourceAd }, optional: true, nullable: false

        field :ad_group, -> { Whop_sdk::People::Types::RetrievePeopleResponseFirstSourceAdGroup }, optional: true, nullable: false

        field :campaign, -> { Whop_sdk::People::Types::RetrievePeopleResponseFirstSourceCampaign }, optional: true, nullable: false

        field :domain, -> { String }, optional: true, nullable: false

        field :occurred_at, -> { String }, optional: true, nullable: false

        field :platform, -> { String }, optional: true, nullable: false

        field :type, -> { Whop_sdk::People::Types::RetrievePeopleResponseFirstSourceType }, optional: false, nullable: false

        field :utm_source, -> { String }, optional: true, nullable: false
      end
    end
  end
end
