# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class CreateDepositsRequestDestinationAccountID < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :address, -> { String }, optional: true, nullable: false

        field :network, -> { Whop_sdk::Deposits::Types::CreateDepositsRequestDestinationAccountIDNetwork }, optional: true, nullable: false
      end
    end
  end
end
