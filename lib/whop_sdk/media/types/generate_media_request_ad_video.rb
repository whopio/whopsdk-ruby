# frozen_string_literal: true

module Whop_sdk
  module Media
    module Types
      # Makes a video ad: Whop writes the prompt, picks product photos, and adds a voiceover with captions. The video is
      # 15 seconds at `720p` in 9:16. Video only. Can't be combined with `prompt`, `reference_media`, `duration_seconds`
      # or `resolution`.
      class GenerateMediaRequestAdVideo < Internal::Types::Model
        field :ad_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
