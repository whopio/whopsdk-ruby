# frozen_string_literal: true

module Whop_sdk
  module Types
    module SearchResultMatchReason
      extend Whop_sdk::Internal::Types::Enum

      ID = "id"
      OWNER_EMAIL = "owner_email"
      TEAM_MEMBER_EMAIL = "team_member_email"
      EMAIL = "email"
      CUSTOMER_EMAIL = "customer_email"
      CARD = "card"
      PHONE = "phone"
      PAYMENT_NUMBER = "payment_number"
      LINK = "link"
      NAME = "name"
    end
  end
end
