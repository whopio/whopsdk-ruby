# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      module UploadEvidenceDisputesRequestDocumentsItemDocumentType
        extend Whop_sdk::Internal::Types::Enum

        RETURN_POLICY = "return_policy"
        SHIPPING_POLICY = "shipping_policy"
        PHYSICAL_FULFILLMENT = "physical_fulfillment"
        CUSTOMER_ORDER_HISTORY = "customer_order_history"
        PRODUCT_IMAGE = "product_image"
        PRIOR_TRANSACTIONS = "prior_transactions"
        CUSTOMER_SESSION = "customer_session"
        DIGITAL_FULFILLMENT = "digital_fulfillment"
        SUBSCRIPTION = "subscription"
      end
    end
  end
end
