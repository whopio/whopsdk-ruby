# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class ListInvoicesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Invoices::Types::ListInvoicesRequestStatus }, optional: true, nullable: false

        field :overdue, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Invoices::Types::ListInvoicesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Invoices::Types::ListInvoicesRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
