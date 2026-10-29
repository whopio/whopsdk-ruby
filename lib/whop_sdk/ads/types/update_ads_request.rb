# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class UpdateAdsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :ads_platform, -> { Whop_sdk::Ads::Types::UpdateAdsRequestXAdsPlatform }, optional: true, nullable: false, api_name: "X-Ads-Platform"

        field :call_to_action, -> { Whop_sdk::Ads::Types::UpdateAdsRequestCallToAction }, optional: true, nullable: false

        field :creatives, -> { Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestCreativesItem] }, optional: true, nullable: false

        field :descriptions, -> { Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestDescriptionsItem] }, optional: true, nullable: false

        field :headlines, -> { Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestHeadlinesItem] }, optional: true, nullable: false

        field :primary_texts, -> { Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestPrimaryTextsItem] }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :url_parameters, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
