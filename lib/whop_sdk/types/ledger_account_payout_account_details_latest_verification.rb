# frozen_string_literal: true

module Whop_sdk
  module Types
    # The latest verification for the connected account.
    class LedgerAccountPayoutAccountDetailsLatestVerification < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :last_error_code, -> { Whop_sdk::Types::VerificationErrorCodes }, optional: false, nullable: true

      field :last_error_reason, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::VerificationStatuses }, optional: false, nullable: false
    end
  end
end
