# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        # Changes to the payout fees this account covers for connected accounts. Send either all or individual category
        # keys. Omitted categories stay unchanged; category changes have no effect while all is true.
        class UpdateFeesRequestCoveredPayoutFees < Internal::Types::Model
          field :all, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :bank_wire, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :crypto, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :digital_wallet, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :next_day_bank, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :rtp, -> { Internal::Types::Boolean }, optional: true, nullable: false
        end
      end
    end
  end
end
