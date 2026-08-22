# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Overrides
      module Types
        class DeleteOverridesRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :override_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
