# frozen_string_literal: true

module Whop_sdk
  module Types
    # A dispute is a chargeback or payment challenge filed against a company, including evidence and response status.
    class DisputeListItem < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :company, -> { Whop_sdk::Types::DisputeListItemCompany }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :editable, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :needs_response_by, -> { String }, optional: false, nullable: true

      field :payment, -> { Whop_sdk::Types::DisputeListItemPayment }, optional: false, nullable: true

      field :plan, -> { Whop_sdk::Types::DisputeListItemPlan }, optional: false, nullable: true

      field :product, -> { Whop_sdk::Types::DisputeListItemProduct }, optional: false, nullable: true

      field :reason, -> { String }, optional: false, nullable: true

      field :reason_code, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DisputeStatuses }, optional: false, nullable: false

      field :visa_rdr, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
