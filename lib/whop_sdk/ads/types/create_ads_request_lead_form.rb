# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Instant lead form for the ad. Only allowed when the ad group's conversion_location is an instant-form
      # destination (instant_forms, instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
      # lead_form_id.
      class CreateAdsRequestLeadForm < Internal::Types::Model
        field :completion, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormCompletion }, optional: true, nullable: false

        field :disclaimer, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormDisclaimer }, optional: true, nullable: false

        field :form_type, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormFormType }, optional: true, nullable: false

        field :intro, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormIntro }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :phone_verification, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :privacy_policy, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormPrivacyPolicy }, optional: true, nullable: false

        field :questions, -> { Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestLeadFormQuestionsItem] }, optional: true, nullable: false
      end
    end
  end
end
