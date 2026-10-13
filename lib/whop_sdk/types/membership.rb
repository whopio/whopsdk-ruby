# frozen_string_literal: true

module Whop_sdk
  module Types
    class Membership < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::StorefrontAccount }, optional: false, nullable: false

      field :affiliate, -> { Whop_sdk::Types::MembershipAffiliate }, optional: false, nullable: true

      field :billing_period_days, -> { Integer }, optional: false, nullable: true

      field :cancel_at_period_end, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :cancel_option, -> { Whop_sdk::Types::MembershipCancelOption }, optional: false, nullable: true

      field :canceled_at, -> { String }, optional: false, nullable: true

      field :cancellation_reason, -> { String }, optional: false, nullable: true

      field :collection_method, -> { Whop_sdk::Types::MembershipCollectionMethod }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :current_period_end, -> { String }, optional: false, nullable: true

      field :current_period_start, -> { String }, optional: false, nullable: true

      field :expires_at, -> { String }, optional: false, nullable: true

      field :feedback_option, -> { Whop_sdk::Types::MembershipFeedbackOption }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :initial_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :license_key, -> { String }, optional: false, nullable: true

      field :manage_url, -> { String }, optional: false, nullable: true

      field :member, -> { Whop_sdk::Types::MembershipMember }, optional: false, nullable: true

      field :member_id, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :most_recent_action, -> { Whop_sdk::Types::MembershipMostRecentAction }, optional: false, nullable: true

      field :most_recent_action_at, -> { String }, optional: false, nullable: true

      field :phone_number, -> { String }, optional: false, nullable: true

      field :plan_id, -> { String }, optional: false, nullable: false

      field :product, -> { Whop_sdk::Types::MembershipProduct }, optional: false, nullable: false

      field :product_id, -> { String }, optional: false, nullable: false

      field :promo_code_id, -> { String }, optional: false, nullable: true

      field :renewal_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :split_pay_current_payments, -> { Integer }, optional: false, nullable: true

      field :split_pay_required_payments, -> { Integer }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::MembershipStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: true
    end
  end
end
