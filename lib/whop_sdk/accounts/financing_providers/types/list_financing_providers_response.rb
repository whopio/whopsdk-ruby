# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingProviders
      module Types
        class ListFinancingProvidersResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::FinancingProvider] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Accounts::FinancingProviders::Types::ListFinancingProvidersResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
