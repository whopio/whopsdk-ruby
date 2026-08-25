# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdownDisplay < Internal::Types::Model
      field :headline, -> { Whop_sdk::Types::CheckoutSessionBreakdownDisplayHeadline }, optional: false, nullable: false

      field :sections, -> { Whop_sdk::Types::CheckoutSessionBreakdownDisplaySections }, optional: false, nullable: false
    end
  end
end
