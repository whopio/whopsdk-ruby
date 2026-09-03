# frozen_string_literal: true

module Whop_sdk
  module Types
    # The plan the customer purchased to create this membership.
    class MembershipLegacyPlan < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true
    end
  end
end
