# frozen_string_literal: true

module WhopSDK
  module Models
    # The type of embed for a lesson
    module EmbedType
      extend WhopSDK::Internal::Type::Enum

      YOUTUBE = :youtube
      LOOM = :loom

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
