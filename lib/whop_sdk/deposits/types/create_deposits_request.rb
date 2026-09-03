# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class CreateDepositsRequest < Internal::Types::Model
        field :amount, -> { Integer }, optional: true, nullable: false

        field :destination, -> { String }, optional: false, nullable: false
      end
    end
  end
end
