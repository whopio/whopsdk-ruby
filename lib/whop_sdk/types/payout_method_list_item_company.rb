# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company associated with this payout destination. Null if not linked to a specific company.
    class PayoutMethodListItemCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
