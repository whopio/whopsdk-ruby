# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      class ListExternalAccountsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ExternalAccount] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::ExternalAccounts::Types::ListExternalAccountsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
