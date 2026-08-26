# frozen_string_literal: true

module Whop_sdk
  module Types
    # Customer associated with the payment. Email requires member:email:read.
    class LedgerActivityPaymentUser < Internal::Types::Model
      field :email, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
