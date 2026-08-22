# frozen_string_literal: true

module Whop_sdk
  module Types
    # The Mux video asset for video-type lessons, used for streaming playback. Null if this lesson has no hosted video.
    class CourseChaptersItemLessonsItemVideoAsset < Internal::Types::Model
      field :duration_seconds, -> { Integer }, optional: false, nullable: true

      field :signed_playback_id, -> { String }, optional: false, nullable: true

      field :signed_thumbnail_playback_token, -> { String }, optional: false, nullable: true
    end
  end
end
