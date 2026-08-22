# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountRecommendedAction < Internal::Types::Model
      field :action, -> { Whop_sdk::Types::AccountRecommendedActionAction }, optional: false, nullable: false

      field :blocked_capabilities, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :cta, -> { String }, optional: false, nullable: false

      field :cta_label, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :icon_url, -> { String }, optional: false, nullable: true

      field :impact_score, -> { Integer }, optional: false, nullable: true

      field :reasoning, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AccountRecommendedActionStatus }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
