# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountWallet < Internal::Types::Model
      field :address, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :network, -> { Whop_sdk::Types::AccountWalletNetwork }, optional: false, nullable: false
    end
  end
end
