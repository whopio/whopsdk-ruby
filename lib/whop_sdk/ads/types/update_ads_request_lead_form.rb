# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Instant lead form for the ad. Only allowed when the ad group's conversion_location is an instant-form
      # destination (instant_forms, instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
      # lead_form_id.
      class UpdateAdsRequestLeadForm < Internal::Types::Model
        field :completion, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormCompletion }, optional: true, nullable: false

        field :disclaimer, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormDisclaimer }, optional: true, nullable: false

        field :form_type, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormFormType }, optional: true, nullable: false

        field :intro, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormIntro }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :phone_verification, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :privacy_policy, -> { Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormPrivacyPolicy }, optional: true, nullable: false

        field :questions, -> { Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestLeadFormQuestionsItem] }, optional: true, nullable: false
      end
    end
  end
end
