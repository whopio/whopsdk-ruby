# frozen_string_literal: true

module Whop_sdk
  module Types
    # A payment represents a completed or attempted charge. Payments track the amount, status, currency, and payment
    # method used.
    class Topup < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: true

      field :failure_message, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :paid_at, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ReceiptStatus }, optional: false, nullable: true

      field :total, -> { Integer }, optional: false, nullable: true
    end
  end
end
