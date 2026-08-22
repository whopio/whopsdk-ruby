# frozen_string_literal: true

module Whop_sdk
  module Types
    # A dispute is a chargeback or payment challenge filed against a company, including evidence and response status.
    class PaymentDisputesItem < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :editable, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :needs_response_by, -> { String }, optional: false, nullable: true

      field :notes, -> { String }, optional: false, nullable: true

      field :reason, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DisputeStatuses }, optional: false, nullable: false
    end
  end
end
