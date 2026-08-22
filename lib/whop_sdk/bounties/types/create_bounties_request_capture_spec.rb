# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Types
      # Per-bounty overrides of the served capture contract. Only accepted when `business_goal_type` is `data_capture`;
      # omitted fields keep the platform defaults, and the resulting contract is echoed back as `capture_spec` on the
      # bounty.
      class CreateBountiesRequestCaptureSpec < Internal::Types::Model
        field :bitrate_target_mbps, -> { Integer }, optional: true, nullable: false

        field :embed_camera_metadata, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :frame_gap_tolerance_ms, -> { Integer }, optional: true, nullable: false

        field :min_clip_duration_seconds, -> { Integer }, optional: true, nullable: false

        field :min_total_verified_duration_seconds, -> { Integer }, optional: true, nullable: false

        field :stabilization_mode, -> { Whop_sdk::Bounties::Types::CreateBountiesRequestCaptureSpecStabilizationMode }, optional: true, nullable: false
      end
    end
  end
end
