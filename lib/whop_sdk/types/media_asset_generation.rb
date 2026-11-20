# frozen_string_literal: true

module Whop_sdk
  module Types
    class MediaAssetGeneration < Internal::Types::Model
      field :ad_video, -> { Whop_sdk::Types::MediaAssetsAdVideo }, optional: false, nullable: true

      field :duration_seconds, -> { Integer }, optional: false, nullable: true

      field :prompt, -> { String }, optional: false, nullable: false

      field :reference_media, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :resolution, -> { Whop_sdk::Types::MediaAssetGenerationResolution }, optional: false, nullable: true
    end
  end
end
