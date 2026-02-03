# frozen_string_literal: true

module WhopSDK
  module Models
    # The upload status of a file
    module UploadStatus
      extend WhopSDK::Internal::Type::Enum

      PENDING = :pending
      PROCESSING = :processing
      READY = :ready
      FAILED = :failed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
