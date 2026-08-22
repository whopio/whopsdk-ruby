# frozen_string_literal: true

module Whop_sdk
  module Exports
    module Types
      class ListExportsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :resource, -> { Whop_sdk::Exports::Types::ListExportsRequestResource }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Exports::Types::ListExportsRequestStatus }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Exports::Types::ListExportsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Exports::Types::ListExportsRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
