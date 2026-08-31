# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class SuspendAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
