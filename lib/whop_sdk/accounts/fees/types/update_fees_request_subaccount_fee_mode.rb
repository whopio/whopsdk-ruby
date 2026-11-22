# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        # Changes how this account charges its subaccounts. Only an account without a parent account can set it. An
        # account can change `inherit` to either other mode. It can change `subaccount_rates_collect_difference` to
        # `subaccount_rates`. Whop must make other changes.
        class UpdateFeesRequestSubaccountFeeMode < Internal::Types::Model
          field :mode, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestSubaccountFeeModeMode }, optional: false, nullable: false
        end
      end
    end
  end
end
