# frozen_string_literal: true

module Whop_sdk
  module Types
    # The physical address associated with this payout account
    class PayoutAccountAddress < Internal::Types::Model
      field :city, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :line1, -> { String }, optional: false, nullable: true

      field :line2, -> { String }, optional: false, nullable: true

      field :postal_code, -> { String }, optional: false, nullable: true

      field :state, -> { String }, optional: false, nullable: true
    end
  end
end
