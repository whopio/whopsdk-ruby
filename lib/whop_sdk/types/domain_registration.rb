# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainRegistration < Internal::Types::Model
      field :amount_due, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :auto_renew, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: true

      field :payment_method_id, -> { String }, optional: false, nullable: true

      field :phase, -> { Whop_sdk::Types::DomainRegistrationPhase }, optional: false, nullable: false

      field :purchase_url, -> { String }, optional: false, nullable: true

      field :state, -> { Whop_sdk::Types::DomainRegistrationState }, optional: false, nullable: false
    end
  end
end
