# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Overrides
      module Types
        class CreateOverridesRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :body, -> { Whop_sdk::Affiliates::Overrides::Types::CreateOverridesRequestBody }, optional: false, nullable: false
        end
      end
    end
  end
end
