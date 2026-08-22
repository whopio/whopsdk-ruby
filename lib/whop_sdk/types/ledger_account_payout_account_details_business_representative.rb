# frozen_string_literal: true

module Whop_sdk
  module Types
    # The business representative for this payout account
    class LedgerAccountPayoutAccountDetailsBusinessRepresentative < Internal::Types::Model
      field :date_of_birth, -> { String }, optional: false, nullable: true

      field :first_name, -> { String }, optional: false, nullable: true

      field :last_name, -> { String }, optional: false, nullable: true

      field :middle_name, -> { String }, optional: false, nullable: true
    end
  end
end
