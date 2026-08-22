# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class TransferOwnershipAccountsResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
