# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      # Cap on how often one person sees ads from this ad group. Only available on campaigns with the `awareness`
      # objective.
      class CreateAdGroupsRequestFrequencyCap < Internal::Types::Model
        field :maximum_impressions, -> { Integer }, optional: true, nullable: false

        field :per_days, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
