# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # The looping track a TikTok carousel ad plays — an MP3 you uploaded, no larger than 10MB. Omitted leaves the ad's
      # music untouched. Null removes it before launch; a submitted carousel takes a replacement track instead.
      # TikTok-only.
      class UpdateAdsRequestMusic < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
