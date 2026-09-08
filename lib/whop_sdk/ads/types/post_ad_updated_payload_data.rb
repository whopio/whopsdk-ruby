# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class PostAdUpdatedPayloadData < Internal::Types::Model
        field :ad_campaign, -> { Whop_sdk::Types::AdEntityReference }, optional: false, nullable: false

        field :ad_group, -> { Whop_sdk::Types::AdEntityReference }, optional: false, nullable: false

        field :call_to_action, -> { Whop_sdk::Ads::Types::PostAdUpdatedPayloadDataCallToAction }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false

        field :creatives, -> { Internal::Types::Array[Whop_sdk::Types::AdCreative] }, optional: false, nullable: false

        field :delivery_status, -> { Whop_sdk::Ads::Types::PostAdUpdatedPayloadDataDeliveryStatus }, optional: false, nullable: false

        field :descriptions, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :existing_post_id, -> { String }, optional: false, nullable: true

        field :headlines, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :issues, -> { Internal::Types::Array[Whop_sdk::Types::AdPlatformIssue] }, optional: false, nullable: false

        field :lead_form, -> { Whop_sdk::Types::AdLeadForm }, optional: true, nullable: false

        field :lead_form_id, -> { String }, optional: true, nullable: false

        field :messaging_config, -> { Whop_sdk::Types::AdMessagingConfig }, optional: true, nullable: false

        field :multi_advertiser_ads, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :music, -> { Whop_sdk::Types::AdMusic }, optional: true, nullable: false

        field :post_id, -> { String }, optional: false, nullable: true

        field :post_source, -> { Whop_sdk::Ads::Types::PostAdUpdatedPayloadDataPostSource }, optional: false, nullable: true

        field :post_thumbnail_url, -> { String }, optional: false, nullable: true

        field :primary_texts, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :social_accounts, -> { Internal::Types::Array[Whop_sdk::Types::AdEntityReference] }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Ads::Types::PostAdUpdatedPayloadDataStatus }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: true

        field :updated_at, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: false, nullable: true

        field :url_parameters, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
