# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class MeAccountsRequest < Internal::Types::Model
        field :include_trading, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
