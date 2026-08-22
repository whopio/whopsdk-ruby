# frozen_string_literal: true

module Whop_sdk
  module Types
    # An identity verification session used to confirm a person or entity's identity for payout account eligibility.
    class VerificationListItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :last_error_code, -> { Whop_sdk::Types::VerificationErrorCodes }, optional: false, nullable: true

      field :last_error_reason, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::VerificationStatuses }, optional: false, nullable: false
    end
  end
end
