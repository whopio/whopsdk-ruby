# frozen_string_literal: true

module Whop_sdk
  module Types
    class Membership < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::StorefrontAccount }, optional: false, nullable: false

      field :cancel_at_period_end, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :current_period_end, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :license_key, -> { String }, optional: false, nullable: true

      field :member, -> { Whop_sdk::Types::MembershipMember }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :phone_number, -> { String }, optional: false, nullable: true

      field :plan_id, -> { String }, optional: false, nullable: false

      field :product_id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::MembershipStatus }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: true
    end
  end
end
