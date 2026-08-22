# frozen_string_literal: true

module Whop_sdk
  module Types
    class BountyCaptureClip < Internal::Types::Model
      field :bounty_submission_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :duration_seconds, -> { Integer }, optional: false, nullable: true

      field :failure_code, -> { String }, optional: false, nullable: true

      field :failure_message, -> { String }, optional: false, nullable: true

      field :frames_url, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :imu_url, -> { String }, optional: false, nullable: true

      field :manifest_url, -> { String }, optional: false, nullable: true

      field :ready_at, -> { String }, optional: false, nullable: true

      field :sequence, -> { Integer }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::BountyCaptureClipStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :video_url, -> { String }, optional: false, nullable: true
    end
  end
end
