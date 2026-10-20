# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # One entry per requested breakdown, keyed by the field it groups on. A field you did not ask for is absent.
      class SummaryPaymentsResponseGroups < Internal::Types::Model
        field :currency, -> { Internal::Types::Hash[String, Integer] }, optional: true, nullable: false

        field :substatus, -> { Whop_sdk::Payments::Types::SummaryPaymentsResponseGroupsSubstatus }, optional: true, nullable: false
      end
    end
  end
end
