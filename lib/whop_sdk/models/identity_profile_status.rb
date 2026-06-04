# frozen_string_literal: true

module WhopSDK
  module Models
    # Derived verification status for an identity profile.
    module IdentityProfileStatus
      extend WhopSDK::Internal::Type::Enum

      NOT_STARTED = :not_started
      PENDING = :pending
      APPROVED = :approved
      REJECTED = :rejected

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
