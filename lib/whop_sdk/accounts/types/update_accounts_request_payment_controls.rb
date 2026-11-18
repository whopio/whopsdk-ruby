# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Payment controls to change. Only `resolution_center_auto_refund` can change. Whop ignores the other fields, so
      # you can send back the object from `GET`. Requires the `payment:resolution_center` and `company:balance:read`
      # scopes.
      class UpdateAccountsRequestPaymentControls < Internal::Types::Model
        field :resolution_center_auto_refund, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestPaymentControlsResolutionCenterAutoRefund }, optional: true, nullable: false
      end
    end
  end
end
