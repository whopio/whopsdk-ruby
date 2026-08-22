# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentMethodDomain < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :hostname, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :provider, -> { Whop_sdk::Types::PaymentMethodDomainProvider }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::PaymentMethodDomainStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
