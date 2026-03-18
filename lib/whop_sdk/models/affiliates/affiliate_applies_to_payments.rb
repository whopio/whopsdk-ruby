# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # Whether the affiliate commission applies to the first payment or all payments
      module AffiliateAppliesToPayments
        extend WhopSDK::Internal::Type::Enum

        FIRST_PAYMENT = :first_payment
        ALL_PAYMENTS = :all_payments

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    AffiliateAppliesToPayments = Affiliates::AffiliateAppliesToPayments
  end
end
