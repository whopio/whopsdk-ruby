# frozen_string_literal: true

module Whop_sdk
  module Search
    module Types
      module ListSearchRequestTypesItem
        extend Whop_sdk::Internal::Types::Enum

        ACCOUNT = "account"
        MEMBER = "member"
        MEMBERSHIP = "membership"
        PAYMENT = "payment"
        AFFILIATE = "affiliate"
        REVIEW = "review"
        RESOLUTION_CENTER_CASE = "resolution_center_case"
        PROMO_CODE = "promo_code"
      end
    end
  end
end
