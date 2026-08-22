# frozen_string_literal: true

module Whop_sdk
  module Types
    class CaptureSpecVideo < Internal::Types::Model
      field :bitrate_ceiling_mbps, -> { Integer }, optional: false, nullable: false

      field :bitrate_floor_mbps, -> { Integer }, optional: false, nullable: false

      field :bitrate_target_mbps, -> { Integer }, optional: false, nullable: false

      field :camera_lens, -> { String }, optional: false, nullable: false

      field :codecs, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :embed_camera_metadata, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :fps, -> { Integer }, optional: false, nullable: false

      field :frame_gap_tolerance_ms, -> { Integer }, optional: false, nullable: false

      field :height, -> { Integer }, optional: false, nullable: false

      field :min_fov_degrees, -> { Integer }, optional: false, nullable: false

      field :orientation, -> { String }, optional: false, nullable: false

      field :preferred_fov_degrees, -> { Integer }, optional: false, nullable: false

      field :stabilization_mode, -> { Whop_sdk::Types::CaptureSpecVideoStabilizationMode }, optional: false, nullable: false

      field :stabilization_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :width, -> { Integer }, optional: false, nullable: false
    end
  end
end
