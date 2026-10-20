# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingProviders
      module Types
        class ListFinancingProvidersRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :status, -> { Whop_sdk::Accounts::FinancingProviders::Types::ListFinancingProvidersRequestStatus }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
