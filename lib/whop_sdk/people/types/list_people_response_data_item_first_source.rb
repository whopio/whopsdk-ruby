# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      # Where a visit came from: a whop ad click, a lead form, an external ad, or a referring site.
      class ListPeopleResponseDataItemFirstSource < Internal::Types::Model
        field :ad, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemFirstSourceAd }, optional: true, nullable: false

        field :ad_group, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemFirstSourceAdGroup }, optional: true, nullable: false

        field :campaign, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemFirstSourceCampaign }, optional: true, nullable: false

        field :domain, -> { String }, optional: true, nullable: false

        field :occurred_at, -> { String }, optional: true, nullable: false

        field :platform, -> { String }, optional: true, nullable: false

        field :type, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemFirstSourceType }, optional: false, nullable: false

        field :utm_source, -> { String }, optional: true, nullable: false
      end
    end
  end
end
