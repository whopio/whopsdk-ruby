# frozen_string_literal: true

module WhopSDK
  module Models
    # The different API versions
    module APIVersion
      extend WhopSDK::Internal::Type::Enum

      V1 = :v1
      V2 = :v2
      V5 = :v5

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
