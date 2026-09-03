# frozen_string_literal: true

module Whop_sdk
  module Types
    # A dispute is a chargeback or payment challenge filed against a company, including evidence and response status.
    class DisputeLegacy < Internal::Types::Model
      field :access_activity_log, -> { String }, optional: false, nullable: true

      field :amount, -> { Integer }, optional: false, nullable: false

      field :billing_address, -> { String }, optional: false, nullable: true

      field :cancellation_policy_attachment, -> { Whop_sdk::Types::DisputeLegacyCancellationPolicyAttachment }, optional: false, nullable: true

      field :cancellation_policy_disclosure, -> { String }, optional: false, nullable: true

      field :company, -> { Whop_sdk::Types::DisputeLegacyCompany }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :customer_communication_attachment, -> { Whop_sdk::Types::DisputeLegacyCustomerCommunicationAttachment }, optional: false, nullable: true

      field :customer_email_address, -> { String }, optional: false, nullable: true

      field :customer_name, -> { String }, optional: false, nullable: true

      field :editable, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :needs_response_by, -> { String }, optional: false, nullable: true

      field :notes, -> { String }, optional: false, nullable: true

      field :payment, -> { Whop_sdk::Types::DisputeLegacyPayment }, optional: false, nullable: true

      field :plan, -> { Whop_sdk::Types::DisputeLegacyPlan }, optional: false, nullable: true

      field :product, -> { Whop_sdk::Types::DisputeLegacyProduct }, optional: false, nullable: true

      field :product_description, -> { String }, optional: false, nullable: true

      field :reason, -> { String }, optional: false, nullable: true

      field :reason_code, -> { String }, optional: false, nullable: true

      field :refund_policy_attachment, -> { Whop_sdk::Types::DisputeLegacyRefundPolicyAttachment }, optional: false, nullable: true

      field :refund_policy_disclosure, -> { String }, optional: false, nullable: true

      field :refund_refusal_explanation, -> { String }, optional: false, nullable: true

      field :service_date, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DisputeStatuses }, optional: false, nullable: false

      field :uncategorized_attachment, -> { Whop_sdk::Types::DisputeLegacyUncategorizedAttachment }, optional: false, nullable: true

      field :visa_rdr, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
