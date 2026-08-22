# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      # One entry per requested breakdown, keyed by the field it groups on. A field you did not ask for is absent.
      class SummaryDisputesResponseGroups < Internal::Types::Model
        field :currency, -> { Internal::Types::Hash[String, Integer] }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Disputes::Types::SummaryDisputesResponseGroupsStatus }, optional: true, nullable: false
      end
    end
  end
end
