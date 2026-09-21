# frozen_string_literal: true

module Whop_sdk
  module Types
    class WaitlistEntry < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :approval_failure_reason, -> { Whop_sdk::Types::WaitlistEntryApprovalFailureReason }, optional: false, nullable: true

      field :buyer_account_id, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :custom_field_responses, -> { Internal::Types::Array[Whop_sdk::Types::WaitlistEntryCustomFieldResponse] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :membership_id, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :plan_id, -> { String }, optional: false, nullable: false

      field :product_id, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::WaitlistEntryStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: false
    end
  end
end
