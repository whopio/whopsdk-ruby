# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      # Cap on how often one person sees ads from this ad group. Only available when the ad group optimizes for reach or
      # ThruPlay. Under a campaign budget every ad group must use the same cap, which applies across the whole campaign,
      # and only with the awareness objective (reach or ThruPlay ad groups) or engagement (ThruPlay). Fixed once the
      # campaign launches; `null` clears it before then.
      class UpdateAdGroupsRequestFrequencyCap < Internal::Types::Model
        field :maximum_impressions, -> { Integer }, optional: true, nullable: false

        field :per_days, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
