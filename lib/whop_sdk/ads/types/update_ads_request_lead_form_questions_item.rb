# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class UpdateAdsRequestLeadFormQuestionsItem < Internal::Types::Model
        field :format, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormQuestionsItemFormat }, optional: true, nullable: false

        field :label, -> { String }, optional: true, nullable: false

        field :options, -> { Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormQuestionsItemOptionsItem] }, optional: true, nullable: false

        field :type, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormQuestionsItemType }, optional: true, nullable: false
      end
    end
  end
end
