# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Buy the domain through Whop, or transfer in a domain you own elsewhere with `auth_code`, then renew it every
      # year and let Whop run its DNS. Pass `null` to release an unpaid or failed purchase, or to cancel a transfer
      # while its current registrar can still stop it.
      class UpdateDomainsRequestRegistration < Internal::Types::Model
        field :auth_code, -> { String }, optional: true, nullable: false

        field :auto_renew, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
