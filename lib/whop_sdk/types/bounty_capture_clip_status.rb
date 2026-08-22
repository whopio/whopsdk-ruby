# frozen_string_literal: true

module Whop_sdk
  module Types
    module BountyCaptureClipStatus
      extend Whop_sdk::Internal::Types::Enum

      RECORDING = "recording"
      VERIFYING = "verifying"
      READY = "ready"
      FAILED = "failed"
    end
  end
end
