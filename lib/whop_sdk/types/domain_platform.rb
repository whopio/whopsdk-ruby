# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainPlatform < Internal::Types::Model
      field :state, -> { Whop_sdk::Types::DomainPlatformState }, optional: false, nullable: false
    end
  end
end
