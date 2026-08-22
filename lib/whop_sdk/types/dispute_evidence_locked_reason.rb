# frozen_string_literal: true

module Whop_sdk
  module Types
    module DisputeEvidenceLockedReason
      extend Whop_sdk::Internal::Types::Enum

      SUBMITTED = "submitted"
      RESPONSE_WINDOW_CLOSED = "response_window_closed"
      NOT_CONTESTABLE = "not_contestable"
    end
  end
end
