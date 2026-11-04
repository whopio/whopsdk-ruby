# frozen_string_literal: true

module Whop_sdk
  module Search
    module Types
      class ListSearchRequest < Internal::Types::Model
        field :query, -> { String }, optional: false, nullable: false

        field :types, -> { Whop_sdk::Search::Types::ListSearchRequestTypesItem }, optional: true, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false

        field :include_subaccounts, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
