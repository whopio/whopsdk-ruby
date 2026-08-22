# frozen_string_literal: true

module Whop_sdk
  module Withdrawals
    module Types
      # A temporary link to a generated withdrawal PDF invoice.
      class GeneratePdfWithdrawalsResponse < Internal::Types::Model
        field :expires_at, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
