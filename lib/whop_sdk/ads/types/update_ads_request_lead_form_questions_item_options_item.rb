# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class UpdateAdsRequestLeadFormQuestionsItemOptionsItem < Internal::Types::Model
        field :key, -> { String }, optional: true, nullable: false

        field :logic, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormQuestionsItemOptionsItemLogic }, optional: true, nullable: false

        field :value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
