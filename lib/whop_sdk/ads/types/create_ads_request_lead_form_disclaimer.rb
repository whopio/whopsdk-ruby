# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Optional custom consent disclaimer with checkboxes.
      class CreateAdsRequestLeadFormDisclaimer < Internal::Types::Model
        field :body, -> { String }, optional: true, nullable: false

        field :checkboxes, -> { Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestLeadFormDisclaimerCheckboxesItem] }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
