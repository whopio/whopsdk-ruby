# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupFrequencyCap < Internal::Types::Model
      field :maximum_impressions, -> { Integer }, optional: false, nullable: false

      field :per_days, -> { Integer }, optional: false, nullable: true
    end
  end
end
