# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountCompanyFormationStatus
      extend Whop_sdk::Internal::Types::Enum

      DRAFT = "draft"
      PROCESSING = "processing"
      FILED = "filed"
      REJECTED = "rejected"
      COMPLETED = "completed"
    end
  end
end
