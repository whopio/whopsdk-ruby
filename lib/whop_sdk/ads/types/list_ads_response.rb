# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class ListAdsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Ad] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Ads::Types::ListAdsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
