# frozen_string_literal: true

module Whop_sdk
  module Types
    module AppDeploymentStatus
      extend Whop_sdk::Internal::Types::Enum

      PUBLISHED = "published"
      UNPUBLISHED = "unpublished"
      PUBLISHING = "publishing"
      FAILED = "failed"
      NO_SOURCE = "no_source"
    end
  end
end
