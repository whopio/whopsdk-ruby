# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # The looping track a TikTok carousel ad plays — an MP3 you uploaded, no larger than 10MB. Required for TikTok
      # carousels (image creatives); TikTok-only.
      class CreateAdsRequestMusic < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
