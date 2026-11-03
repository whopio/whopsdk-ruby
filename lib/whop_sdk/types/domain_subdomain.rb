# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainSubdomain < Internal::Types::Model
      field :state, -> { Whop_sdk::Types::DomainSubdomainState }, optional: false, nullable: false
    end
  end
end
