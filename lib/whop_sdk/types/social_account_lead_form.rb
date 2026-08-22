# frozen_string_literal: true

module Whop_sdk
  module Types
    class SocialAccountLeadForm < Internal::Types::Model
      field :completion, -> { Whop_sdk::Types::AdLeadFormCompletion }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true

      field :disclaimer, -> { Whop_sdk::Types::AdLeadFormDisclaimer }, optional: false, nullable: true

      field :form_type, -> { Whop_sdk::Types::SocialAccountLeadFormFormType }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :intro, -> { Whop_sdk::Types::AdLeadFormIntro }, optional: false, nullable: true

      field :locale, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :privacy_policy_link_text, -> { String }, optional: false, nullable: true

      field :privacy_policy_url, -> { String }, optional: false, nullable: true

      field :question_labels, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :questions, -> { Internal::Types::Array[Whop_sdk::Types::AdLeadFormQuestion] }, optional: false, nullable: false
    end
  end
end
