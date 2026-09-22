# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # Hydrated details for the records this event references. Only present keys resolved.
      class PostPixelEventCreatedPayloadDataRelated < Internal::Types::Model
        field :account, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedAccount }, optional: true, nullable: false

        field :ad, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedAd }, optional: true, nullable: false

        field :ad_campaign, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedAdCampaign }, optional: true, nullable: false

        field :ad_group, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedAdGroup }, optional: true, nullable: false

        field :app, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedApp }, optional: true, nullable: false

        field :audience, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedAudience }, optional: true, nullable: false

        field :payment, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedPayment }, optional: true, nullable: false

        field :plan, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedPlan }, optional: true, nullable: false

        field :product, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedProduct }, optional: true, nullable: false

        field :user, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadDataRelatedUser }, optional: true, nullable: false
      end
    end
  end
end
