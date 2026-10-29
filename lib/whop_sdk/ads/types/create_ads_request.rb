# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class CreateAdsRequest < Internal::Types::Model
        field :ad_group, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :ad_group_id, -> { String }, optional: true, nullable: false

        field :call_to_action, -> { Whop_sdk::Ads::Types::CreateAdsRequestCallToAction }, optional: true, nullable: false

        field :creatives, -> { Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestCreativesItem] }, optional: true, nullable: false

        field :descriptions, -> { Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestDescriptionsItem] }, optional: true, nullable: false

        field :headlines, -> { Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestHeadlinesItem] }, optional: true, nullable: false

        field :primary_texts, -> { Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestPrimaryTextsItem] }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :url_parameters, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
