# frozen_string_literal: true

module Whop_sdk
  module Types
    class Refund < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :failure_message, -> { String }, optional: false, nullable: true

      field :failure_reason, -> { Whop_sdk::Types::RefundFailureReason }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :original_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :payment_id, -> { String }, optional: false, nullable: false

      field :provider, -> { String }, optional: false, nullable: false

      field :provider_created_at, -> { String }, optional: false, nullable: true

      field :reason, -> { Whop_sdk::Types::RefundReason }, optional: false, nullable: true

      field :reference_status, -> { Whop_sdk::Types::RefundReferenceStatus }, optional: false, nullable: true

      field :reference_type, -> { Whop_sdk::Types::RefundReferenceType }, optional: false, nullable: true

      field :reference_value, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::RefundStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :visa_rdr, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
