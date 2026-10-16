# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class SearchAccountsRequest < Internal::Types::Model
        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: false, nullable: false

        field :order, -> { Whop_sdk::Accounts::Types::SearchAccountsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Accounts::Types::SearchAccountsRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
