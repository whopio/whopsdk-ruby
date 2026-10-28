# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class SendInvoicesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :charge_at, -> { String }, optional: true, nullable: false

        field :send_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
