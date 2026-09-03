# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class UpdateAdsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :call_to_action, -> { Whop_sdk::Ads::Types::UpdateAdsRequestCallToAction }, optional: true, nullable: false

        field :creatives, -> { Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestCreativesItem] }, optional: true, nullable: false

        field :descriptions, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :existing_post_id, -> { String }, optional: true, nullable: false

        field :headlines, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :lead_form, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadForm }, optional: true, nullable: false

        field :lead_form_id, -> { String }, optional: true, nullable: false

        field :messaging_config, -> { Whop_sdk::Ads::Types::UpdateAdsRequestMessagingConfig }, optional: true, nullable: false

        field :multi_advertiser_ads, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :music, -> { Whop_sdk::Ads::Types::UpdateAdsRequestMusic }, optional: true, nullable: false

        field :post_source, -> { Whop_sdk::Ads::Types::UpdateAdsRequestPostSource }, optional: true, nullable: false

        field :primary_texts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :social_accounts, -> { Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestSocialAccountsItem] }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :url_parameters, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
