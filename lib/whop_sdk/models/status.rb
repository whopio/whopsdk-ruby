# frozen_string_literal: true

module WhopSDK
  module Models
    # Statuses for resources
    module Status
      extend WhopSDK::Internal::Type::Enum

      ACTIVE = :active
      ARCHIVED = :archived
      DELETED = :deleted

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
