# frozen_string_literal: true

module Whop_sdk
  module Types
    # A membership represents an active relationship between a user and a product. It tracks the user's access, billing
    # status, and renewal schedule.
    class MembershipLegacy < Internal::Types::Model
      field :cancel_at_period_end, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :cancel_option, -> { Whop_sdk::Types::CancelOptions }, optional: false, nullable: true

      field :cancelation_status, -> { Whop_sdk::Types::CancelationStatus }, optional: false, nullable: true

      field :canceled_at, -> { String }, optional: false, nullable: true

      field :cancellation_reason, -> { String }, optional: false, nullable: true

      field :checkout_configuration_id, -> { String }, optional: false, nullable: true

      field :company, -> { Whop_sdk::Types::MembershipLegacyCompany }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: true

      field :custom_field_responses, -> { Internal::Types::Array[Whop_sdk::Types::MembershipLegacyCustomFieldResponsesItem] }, optional: false, nullable: false

      field :formatted_renewal_price, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :initial_price_paid, -> { String }, optional: false, nullable: false

      field :joined_at, -> { String }, optional: false, nullable: true

      field :license_key, -> { String }, optional: false, nullable: true

      field :manage_url, -> { String }, optional: false, nullable: true

      field :member, -> { Whop_sdk::Types::MembershipLegacyMember }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :payment_collection_paused, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :plan, -> { Whop_sdk::Types::MembershipLegacyPlan }, optional: false, nullable: false

      field :product, -> { Whop_sdk::Types::MembershipLegacyProduct }, optional: false, nullable: false

      field :promo_code, -> { Whop_sdk::Types::MembershipLegacyPromoCode }, optional: false, nullable: true

      field :renewal_period_end, -> { String }, optional: false, nullable: true

      field :renewal_period_start, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::MembershipStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::MembershipLegacyUser }, optional: false, nullable: true
    end
  end
end
