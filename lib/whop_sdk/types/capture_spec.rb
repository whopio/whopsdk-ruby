# frozen_string_literal: true

module Whop_sdk
  module Types
    class CaptureSpec < Internal::Types::Model
      field :filename_pattern, -> { String }, optional: false, nullable: false

      field :imu, -> { Whop_sdk::Types::CaptureSpecImu }, optional: false, nullable: false

      field :manifest_schema_version, -> { Integer }, optional: false, nullable: false

      field :min_clip_duration_seconds, -> { Integer }, optional: false, nullable: false

      field :min_total_verified_duration_seconds, -> { Integer }, optional: false, nullable: false

      field :required_metadata_fields, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :single_continuous_take, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :video, -> { Whop_sdk::Types::CaptureSpecVideo }, optional: false, nullable: false
    end
  end
end
