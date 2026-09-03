# frozen_string_literal: true

module Whop_sdk
  module Topups
    module Types
      class CreateTopupsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :amount, -> { Integer }, optional: false, nullable: false

        field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

        field :payment_method_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
