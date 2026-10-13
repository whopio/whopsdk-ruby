# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainPixel < Internal::Types::Model
      field :state, -> { Whop_sdk::Types::DomainPixelState }, optional: false, nullable: false
    end
  end
end
