# frozen_string_literal: true

module Whop_sdk
  module Types
    module AppElementsUsedItem
      extend Whop_sdk::Internal::Types::Enum

      ADS = "ads"
      ADS_BILLING_SETUP = "ads.billing-setup"
      ADS_CAMPAIGN_CREATOR = "ads.campaign-creator"
      ADS_REPORTING = "ads.reporting"
      ADS_REPORTING_CHART = "ads.reporting.chart"
      ADS_REPORTING_TABLE = "ads.reporting.table"
      CHECKOUT = "checkout"
      CHECKOUT_CHECKOUT = "checkout.checkout"
      CHECKOUT_EXPRESS_CHECKOUT = "checkout.expressCheckout"
      PAYMENTS = "payments"
      PAYMENTS_ADDRESS = "payments.address"
      PAYMENTS_BRANDING = "payments.branding"
      PAYMENTS_CARD = "payments.card"
      PAYMENTS_CARD_FIELDS = "payments.cardFields"
      PAYMENTS_CARD_FIELDS_CARD_CVC = "payments.cardFields.cardCvc"
      PAYMENTS_CARD_FIELDS_CARD_EXPIRY = "payments.cardFields.cardExpiry"
      PAYMENTS_CARD_FIELDS_CARD_NUMBER = "payments.cardFields.cardNumber"
      PAYMENTS_EMAIL = "payments.email"
      PAYMENTS_PAYMENT = "payments.payment"
      PAYMENTS_TAX_ID = "payments.taxId"
      TRACKING = "tracking"
      TRACKING_EVENTS = "tracking.events"
      TRACKING_PEOPLE = "tracking.people"
      WALLET = "wallet"
      WALLET_ACTIVITY = "wallet.activity"
      WALLET_BALANCES = "wallet.balances"
      WALLET_BALANCES_BALANCE = "wallet.balances.balance"
      WALLET_BALANCES_LIST = "wallet.balances.list"
      WALLET_CARDS = "wallet.cards"
      WALLET_DEPOSIT = "wallet.deposit"
      WALLET_SEND = "wallet.send"
      WALLET_WITHDRAW = "wallet.withdraw"
      WEBSITES = "websites"
      WEBSITES_PIXEL_SETUP = "websites.pixel-setup"
      WEBSITES_WEBSITES = "websites.websites"
    end
  end
end
