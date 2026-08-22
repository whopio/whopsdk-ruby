# frozen_string_literal: true

module Whop_sdk
  module Types
    # Payout destination display info (withdrawal sources only).
    class LedgerActivitySourcePayoutDestination < Internal::Types::Model
      field :icon_url, -> { String }, optional: true, nullable: false

      field :payer_name, -> { String }, optional: true, nullable: false
    end
  end
end
