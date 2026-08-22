# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class CancelMembershipsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :cancel_at_period_end, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :reason, -> { String }, optional: true, nullable: false
      end
    end
  end
end
