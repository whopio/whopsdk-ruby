# frozen_string_literal: true

module WhopSDK
  module Models
    # Controls whether an uploaded file is publicly accessible or requires
    # authentication to access.
    module FileVisibility
      extend WhopSDK::Internal::Type::Enum

      PUBLIC = :public
      PRIVATE = :private

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
