# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      class ConnectExternalAccountsResponse < Internal::Types::Model
        field :authorize_url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
