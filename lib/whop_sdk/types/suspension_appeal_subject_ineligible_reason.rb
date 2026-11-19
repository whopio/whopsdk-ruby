# frozen_string_literal: true

module Whop_sdk
  module Types
    module SuspensionAppealSubjectIneligibleReason
      extend Whop_sdk::Internal::Types::Enum

      NOT_SUSPENDED = "not_suspended"
      ALREADY_SUBMITTED = "already_submitted"
      DEADLINE_PASSED = "deadline_passed"
    end
  end
end
