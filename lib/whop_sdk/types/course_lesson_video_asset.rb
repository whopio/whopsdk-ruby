# frozen_string_literal: true

module Whop_sdk
  module Types
    # The Mux video asset for video-type lessons, used for streaming playback. Null if this lesson has no hosted video.
    class CourseLessonVideoAsset < Internal::Types::Model
      field :asset_id, -> { String }, optional: false, nullable: true

      field :audio_only, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :duration_seconds, -> { Integer }, optional: false, nullable: true

      field :finished_uploading_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :playback_id, -> { String }, optional: false, nullable: true

      field :signed_playback_id, -> { String }, optional: false, nullable: true

      field :signed_storyboard_playback_token, -> { String }, optional: false, nullable: true

      field :signed_thumbnail_playback_token, -> { String }, optional: false, nullable: true

      field :signed_video_playback_token, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::MuxAssetStatuses }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
