# frozen_string_literal: true

module Whop_sdk
  module Types
    # The payout account associated with the LedgerAccount, if any.
    class LedgerAccountPayoutAccountDetails < Internal::Types::Model
      field :address, -> { Whop_sdk::Types::LedgerAccountPayoutAccountDetailsAddress }, optional: false, nullable: true

      field :business_name, -> { String }, optional: false, nullable: true

      field :business_representative, -> { Whop_sdk::Types::LedgerAccountPayoutAccountDetailsBusinessRepresentative }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :latest_verification, -> { Whop_sdk::Types::LedgerAccountPayoutAccountDetailsLatestVerification }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::PayoutAccountCalculatedStatuses }, optional: false, nullable: true
    end
  end
end
