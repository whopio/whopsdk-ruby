# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainApplePay < Internal::Types::Model
      field :state, -> { Whop_sdk::Types::DomainApplePayState }, optional: false, nullable: false
    end
  end
end
