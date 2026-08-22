# frozen_string_literal: true

module Whop_sdk
  module PaymentMethodDomains
    module Types
      class ListPaymentMethodDomainsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :hostname, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsRequestStatus }, optional: true, nullable: false

        field :provider, -> { Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsRequestProvider }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
