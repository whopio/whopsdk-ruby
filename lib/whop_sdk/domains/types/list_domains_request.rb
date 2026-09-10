# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      class ListDomainsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :app_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Domains::Types::ListDomainsRequestStatus }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Domains::Types::ListDomainsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Domains::Types::ListDomainsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
