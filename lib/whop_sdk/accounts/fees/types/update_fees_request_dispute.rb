# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        # The fields of a fee the caller may change. Only the keys sent are replaced.
        class UpdateFeesRequestDispute < Internal::Types::Model
          field :fixed, -> { Integer }, optional: true, nullable: false

          field :percentage, -> { Integer }, optional: true, nullable: false

          field :regions, -> { Internal::Types::Hash[String, Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestDisputeRegionsValue] }, optional: true, nullable: false
        end
      end
    end
  end
end
