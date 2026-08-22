# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadForm < Internal::Types::Model
      field :completion, -> { Whop_sdk::Types::AdLeadFormCompletion }, optional: false, nullable: true

      field :disclaimer, -> { Whop_sdk::Types::AdLeadFormDisclaimer }, optional: false, nullable: true

      field :form_type, -> { Whop_sdk::Types::AdLeadFormFormType }, optional: false, nullable: false

      field :intro, -> { Whop_sdk::Types::AdLeadFormIntro }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :phone_verification, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :privacy_policy, -> { Whop_sdk::Types::AdLeadFormPrivacyPolicy }, optional: false, nullable: true

      field :questions, -> { Internal::Types::Array[Whop_sdk::Types::AdLeadFormQuestion] }, optional: false, nullable: false
    end
  end
end
