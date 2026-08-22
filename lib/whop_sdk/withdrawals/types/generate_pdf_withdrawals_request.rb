# frozen_string_literal: true

module Whop_sdk
  module Withdrawals
    module Types
      class GeneratePdfWithdrawalsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
