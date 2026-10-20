# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class SummaryPaymentsResponse < Internal::Types::Model
        field :groups, -> { Whop_sdk::Payments::Types::SummaryPaymentsResponseGroups }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
