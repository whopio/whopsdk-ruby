# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class ListDisputesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Disputes::Types::ListDisputesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Disputes::Types::ListDisputesRequestDirection }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Disputes::Types::ListDisputesRequestStatusItem }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
