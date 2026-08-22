# frozen_string_literal: true

module Whop_sdk
  module Types
    class CaptureSpecImu < Internal::Types::Model
      field :device_motion_units, -> { String }, optional: false, nullable: false

      field :magnetometer_units, -> { String }, optional: false, nullable: false

      field :min_rate_hz, -> { Integer }, optional: false, nullable: false

      field :target_rate_hz, -> { Integer }, optional: false, nullable: false

      field :warmup_min_rate_hz, -> { Integer }, optional: false, nullable: false

      field :warmup_ns, -> { Integer }, optional: false, nullable: false
    end
  end
end
