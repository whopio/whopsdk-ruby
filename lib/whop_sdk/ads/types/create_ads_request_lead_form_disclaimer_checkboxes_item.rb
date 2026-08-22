# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class CreateAdsRequestLeadFormDisclaimerCheckboxesItem < Internal::Types::Model
        field :checked_by_default, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :key, -> { String }, optional: true, nullable: false

        field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :text, -> { String }, optional: true, nullable: false
      end
    end
  end
end
