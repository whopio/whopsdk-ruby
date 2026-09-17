# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        class UpdateFeesRequestRevshareRegionsValue < Internal::Types::Model
          field :fixed, -> { Integer }, optional: true, nullable: false

          field :percentage, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
