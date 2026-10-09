# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Buy the domain through Whop, renew it every year, and let Whop run its DNS. Pass `null` to release an unpaid or
      # failed purchase.
      class CreateDomainsRequestRegistration < Internal::Types::Model
        field :auto_renew, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
