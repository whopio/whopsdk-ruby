# frozen_string_literal: true

module Whop_sdk
  module Types
    class PartnerAdvance < Internal::Types::Model
      field :activity60day, -> { Whop_sdk::Types::Money }, optional: false, nullable: true, api_name: "activity_60_day"

      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :annual_processing, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :clawed_back_at, -> { String }, optional: false, nullable: true

      field :deadline_at, -> { String }, optional: false, nullable: true

      field :funded_at, -> { String }, optional: false, nullable: true

      field :offer_token, -> { String }, optional: false, nullable: true

      field :processing_target, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :projected60day_activity, -> { Whop_sdk::Types::Money }, optional: false, nullable: true, api_name: "projected_60_day_activity"

      field :projected_commissions, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :projected_processing_commissions, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :qualified_at, -> { String }, optional: false, nullable: true

      field :recovery_threshold, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::PartnerAdvanceStatus }, optional: false, nullable: false

      field :terms_version, -> { String }, optional: false, nullable: true
    end
  end
end
