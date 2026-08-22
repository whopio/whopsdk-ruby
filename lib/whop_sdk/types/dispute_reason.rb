# frozen_string_literal: true

module Whop_sdk
  module Types
    module DisputeReason
      extend Whop_sdk::Internal::Types::Enum

      FRAUDULENT = "fraudulent"
      UNRECOGNIZED = "unrecognized"
      DECLINED_AUTHORIZATION = "declined_authorization"
      PRODUCT_NOT_RECEIVED = "product_not_received"
      PRODUCT_UNACCEPTABLE = "product_unacceptable"
      SUBSCRIPTION_CANCELED = "subscription_canceled"
      CREDIT_NOT_PROCESSED = "credit_not_processed"
      DUPLICATE = "duplicate"
      PROCESSING_ERROR = "processing_error"
      DOCUMENTATION_REQUEST = "documentation_request"
      BANK_CANNOT_PROCESS = "bank_cannot_process"
      OTHER = "other"
    end
  end
end
