# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      # Cap on how often one person sees ads from this ad group. Only available when the ad group optimizes for reach or
      # ThruPlay. Once the ad group is live on the ad network, the cap can only be changed before its start date and
      # can't be removed; otherwise `null` clears it.
      class CreateAdGroupsRequestFrequencyCap < Internal::Types::Model
        field :maximum_impressions, -> { Integer }, optional: true, nullable: false

        field :per_days, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
