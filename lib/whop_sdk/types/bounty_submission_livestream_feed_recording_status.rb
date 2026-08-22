# frozen_string_literal: true

module Whop_sdk
  module Types
    module BountySubmissionLivestreamFeedRecordingStatus
      extend Whop_sdk::Internal::Types::Enum

      RECORDING = "recording"
      PROCESSING = "processing"
      COMPLETED = "completed"
      FAILED = "failed"
    end
  end
end
