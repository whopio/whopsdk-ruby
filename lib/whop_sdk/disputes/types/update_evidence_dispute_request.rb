# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class UpdateEvidenceDisputeRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :access_activity_log, -> { String }, optional: true, nullable: false

        field :billing_address, -> { String }, optional: true, nullable: false

        field :cancellation_policy_attachment, -> { Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequestCancellationPolicyAttachment }, optional: true, nullable: false

        field :cancellation_policy_disclosure, -> { String }, optional: true, nullable: false

        field :customer_communication_attachment, -> { Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequestCustomerCommunicationAttachment }, optional: true, nullable: false

        field :customer_email_address, -> { String }, optional: true, nullable: false

        field :customer_name, -> { String }, optional: true, nullable: false

        field :notes, -> { String }, optional: true, nullable: false

        field :product_description, -> { String }, optional: true, nullable: false

        field :refund_policy_attachment, -> { Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequestRefundPolicyAttachment }, optional: true, nullable: false

        field :refund_policy_disclosure, -> { String }, optional: true, nullable: false

        field :refund_refusal_explanation, -> { String }, optional: true, nullable: false

        field :service_date, -> { String }, optional: true, nullable: false

        field :uncategorized_attachment, -> { Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequestUncategorizedAttachment }, optional: true, nullable: false
      end
    end
  end
end
