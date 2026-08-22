# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupGeoLocationsBodyZipsItem < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { String }

      member -> { Whop_sdk::Types::AdGroupGeoLocationsBodyZipsItemKey }
    end
  end
end
