# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class ListAccountsRequest < Internal::Types::Model
        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Accounts::Types::ListAccountsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Accounts::Types::ListAccountsRequestDirection }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Accounts::Types::ListAccountsRequestStatus }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :volume_min, -> { Integer }, optional: true, nullable: false

        field :volume_max, -> { Integer }, optional: true, nullable: false

        field :parent_account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
