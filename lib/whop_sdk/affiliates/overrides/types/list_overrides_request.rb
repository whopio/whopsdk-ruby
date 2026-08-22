# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Overrides
      module Types
        class ListOverridesRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :override_type, -> { Whop_sdk::Types::AffiliateOverrideRoles }, optional: true, nullable: false
        end
      end
    end
  end
end
