# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainEmail < Internal::Types::Model
      field :state, -> { Whop_sdk::Types::DomainEmailState }, optional: false, nullable: false
    end
  end
end
