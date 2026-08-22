# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # The saved crop window for this creative, in source image pixels. Omit it for the original asset or for a format
      # that has not been cropped.
      class CreateAdsRequestCreativesItemCrop < Internal::Types::Model
        field :height, -> { Integer }, optional: true, nullable: false

        field :width, -> { Integer }, optional: true, nullable: false

        field :x, -> { Integer }, optional: true, nullable: false

        field :y, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
