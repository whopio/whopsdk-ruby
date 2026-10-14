# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class CreateDepositsRequest < Internal::Types::Model
        field :amount, -> { Integer }, optional: true, nullable: false

        field :destination, -> { String }, optional: false, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
