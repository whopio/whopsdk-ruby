# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class SummaryDisputesResponse < Internal::Types::Model
        field :groups, -> { Whop_sdk::Disputes::Types::SummaryDisputesResponseGroups }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
