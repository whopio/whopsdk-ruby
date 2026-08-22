# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class UpdateMembershipsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :cancel_at_period_end, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
