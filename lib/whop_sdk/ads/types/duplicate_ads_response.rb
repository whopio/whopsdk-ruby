# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class DuplicateAdsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Ad] }, optional: false, nullable: false
      end
    end
  end
end
