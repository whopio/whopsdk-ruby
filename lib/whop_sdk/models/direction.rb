# frozen_string_literal: true

module WhopSDK
  module Models
    # The direction of the sort.
    module Direction
      extend WhopSDK::Internal::Type::Enum

      ASC = :asc
      DESC = :desc

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
