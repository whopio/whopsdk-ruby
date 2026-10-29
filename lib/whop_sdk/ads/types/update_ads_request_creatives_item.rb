# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class UpdateAdsRequestCreativesItem < Internal::Types::Model
        field :crop, -> { Whop_sdk::Ads::Types::UpdateAdsRequestCreativesItemCrop }, optional: true, nullable: false

        field :format, -> { Whop_sdk::Ads::Types::UpdateAdsRequestCreativesItemFormat }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
