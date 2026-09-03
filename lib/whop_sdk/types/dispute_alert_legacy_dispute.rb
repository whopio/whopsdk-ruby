# frozen_string_literal: true

module Whop_sdk
  module Types
    # The dispute associated with the dispute alert.
    class DisputeAlertLegacyDispute < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: true

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :reason, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DisputeStatuses }, optional: false, nullable: false
    end
  end
end
