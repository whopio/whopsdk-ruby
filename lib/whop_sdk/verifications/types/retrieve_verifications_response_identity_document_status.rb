# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      module RetrieveVerificationsResponseIdentityDocumentStatus
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        APPROVED = "approved"
        REJECTED = "rejected"
      end
    end
  end
end
