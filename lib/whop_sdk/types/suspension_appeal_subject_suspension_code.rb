# frozen_string_literal: true

module Whop_sdk
  module Types
    module SuspensionAppealSubjectSuspensionCode
      extend Whop_sdk::Internal::Types::Enum

      FRAUDULENT_ACTIVITY = "fraudulent_activity"
      UNAUTHORIZED_PAYMENTS = "unauthorized_payments"
      PREVIOUS_FRAUD_SUSPENSION = "previous_fraud_suspension"
      PROHIBITED_BUSINESS_CATEGORY = "prohibited_business_category"
      UNVERIFIABLE_BUSINESS = "unverifiable_business"
      UNVERIFIABLE_FULFILLMENT = "unverifiable_fulfillment"
      SANCTIONS = "sanctions"
      UNSUPPORTED_JURISDICTION = "unsupported_jurisdiction"
      PROHIBITED_CONTENT = "prohibited_content"
      INTELLECTUAL_PROPERTY_INFRINGEMENT = "intellectual_property_infringement"
      SCAMMING_OR_DECEPTIVE_PRACTICES = "scamming_or_deceptive_practices"
      EXCESSIVE_DISPUTE_RATE = "excessive_dispute_rate"
      TAX_AUTHORITY_ORDER = "tax_authority_order"
      PLATFORM_REQUEST = "platform_request"
      FORMER_EMPLOYEE = "former_employee"
    end
  end
end
