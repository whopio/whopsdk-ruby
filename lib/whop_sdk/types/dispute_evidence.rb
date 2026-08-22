# frozen_string_literal: true

module Whop_sdk
  module Types
    class DisputeEvidence < Internal::Types::Model
      field :access_activity_log, -> { String }, optional: false, nullable: true

      field :billing_address, -> { String }, optional: false, nullable: true

      field :cancellation_policy_attachment, -> { Whop_sdk::Types::DisputeAttachment }, optional: false, nullable: true

      field :cancellation_policy_disclosure, -> { String }, optional: false, nullable: true

      field :customer_communication_attachment, -> { Whop_sdk::Types::DisputeAttachment }, optional: false, nullable: true

      field :customer_email_address, -> { String }, optional: false, nullable: true

      field :customer_name, -> { String }, optional: false, nullable: true

      field :documents, -> { Internal::Types::Array[Whop_sdk::Types::DisputeEvidenceDocument] }, optional: false, nullable: false

      field :notes, -> { String }, optional: false, nullable: true

      field :product_description, -> { String }, optional: false, nullable: true

      field :refund_policy_attachment, -> { Whop_sdk::Types::DisputeAttachment }, optional: false, nullable: true

      field :refund_policy_disclosure, -> { String }, optional: false, nullable: true

      field :refund_refusal_explanation, -> { String }, optional: false, nullable: true

      field :service_date, -> { String }, optional: false, nullable: true

      field :uncategorized_attachment, -> { Whop_sdk::Types::DisputeAttachment }, optional: false, nullable: true
    end
  end
end
