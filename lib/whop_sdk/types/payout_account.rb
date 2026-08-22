# frozen_string_literal: true

module Whop_sdk
  module Types
    # An object representing an account used for payouts.
    class PayoutAccount < Internal::Types::Model
      field :address, -> { Whop_sdk::Types::PayoutAccountAddress }, optional: false, nullable: true

      field :business_name, -> { String }, optional: false, nullable: true

      field :business_representative, -> { Whop_sdk::Types::PayoutAccountBusinessRepresentative }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :latest_verification, -> { Whop_sdk::Types::PayoutAccountLatestVerification }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::PayoutAccountCalculatedStatuses }, optional: false, nullable: true
    end
  end
end
