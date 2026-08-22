# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class CreateAdsRequestCreativesItem < Internal::Types::Model
        field :crop, -> { Whop_sdk::Ads::Types::CreateAdsRequestCreativesItemCrop }, optional: true, nullable: false

        field :format, -> { Whop_sdk::Ads::Types::CreateAdsRequestCreativesItemFormat }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
