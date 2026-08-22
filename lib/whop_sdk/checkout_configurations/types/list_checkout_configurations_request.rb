# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      class ListCheckoutConfigurationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
