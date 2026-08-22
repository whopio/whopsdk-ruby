# frozen_string_literal: true

module Whop_sdk
  module Types
    class Dispute < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :amount, -> { Integer }, optional: false, nullable: false

      field :buyer, -> { Whop_sdk::Types::DisputeBuyer }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :evidence, -> { Whop_sdk::Types::DisputeEvidence }, optional: false, nullable: false

      field :evidence_due_at, -> { String }, optional: false, nullable: true

      field :evidence_editable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :evidence_locked_reason, -> { Whop_sdk::Types::DisputeEvidenceLockedReason }, optional: false, nullable: true

      field :evidence_submitted_at, -> { String }, optional: false, nullable: true

      field :generated_response_attachment, -> { Whop_sdk::Types::DisputeAttachment }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :inquiry, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :issuer_comments, -> { Internal::Types::Array[Whop_sdk::Types::DisputeIssuerComment] }, optional: false, nullable: false

      field :payment, -> { Whop_sdk::Types::DisputePayment }, optional: false, nullable: true

      field :plan_id, -> { String }, optional: false, nullable: true

      field :product_id, -> { String }, optional: false, nullable: true

      field :rapid_dispute_resolution, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :reason, -> { Whop_sdk::Types::DisputeReason }, optional: false, nullable: false

      field :reason_code, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DisputeStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
