# frozen_string_literal: true

module Whop_sdk
  module Types
    # The product this membership grants access to.
    class MembershipLegacyProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
