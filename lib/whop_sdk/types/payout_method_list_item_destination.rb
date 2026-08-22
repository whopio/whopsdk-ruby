# frozen_string_literal: true

module Whop_sdk
  module Types
    # The payout destination configuration linked to this token. Null if not yet configured.
    class PayoutMethodListItemDestination < Internal::Types::Model
      field :category, -> { Whop_sdk::Types::PayoutDestinationCategory }, optional: false, nullable: false

      field :country_code, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
