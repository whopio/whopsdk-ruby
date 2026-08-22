# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class CreateAdsRequestLeadFormQuestionsItem < Internal::Types::Model
        field :format, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormQuestionsItemFormat }, optional: true, nullable: false

        field :label, -> { String }, optional: true, nullable: false

        field :options, -> { Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestLeadFormQuestionsItemOptionsItem] }, optional: true, nullable: false

        field :type, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormQuestionsItemType }, optional: true, nullable: false
      end
    end
  end
end
