# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # Hydrated details for the records this event references. Only present keys resolved.
      class ListEventsResponseDataItemRelated < Internal::Types::Model
        field :account, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedAccount }, optional: true, nullable: false

        field :ad, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedAd }, optional: true, nullable: false

        field :ad_campaign, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedAdCampaign }, optional: true, nullable: false

        field :ad_group, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedAdGroup }, optional: true, nullable: false

        field :app, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedApp }, optional: true, nullable: false

        field :audience, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedAudience }, optional: true, nullable: false

        field :payment, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedPayment }, optional: true, nullable: false

        field :plan, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedPlan }, optional: true, nullable: false

        field :product, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedProduct }, optional: true, nullable: false

        field :user, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelatedUser }, optional: true, nullable: false
      end
    end
  end
end
