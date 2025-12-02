# frozen_string_literal: true

module WhopSDK
  module Models
    # The status of the setup intent.
    module SetupIntentStatus
      extend WhopSDK::Internal::Type::Enum

      PROCESSING = :processing
      SUCCEEDED = :succeeded
      CANCELED = :canceled
      REQUIRES_ACTION = :requires_action

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
