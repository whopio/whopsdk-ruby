# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class RetrieveBusinessesResponseEarningsUsd < Internal::Types::Model
          field :completed, -> { String }, optional: false, nullable: false

          field :pending, -> { String }, optional: false, nullable: false

          field :total, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
