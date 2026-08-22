# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserRecommendedAction < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :account_name, -> { String }, optional: false, nullable: true

      field :action, -> { Whop_sdk::Types::UserRecommendedActionAction }, optional: false, nullable: false

      field :blocked_capabilities, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :cta, -> { String }, optional: false, nullable: false

      field :cta_label, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :icon_url, -> { String }, optional: false, nullable: true

      field :impact_score, -> { Integer }, optional: false, nullable: true

      field :reasoning, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::UserRecommendedActionStatus }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
