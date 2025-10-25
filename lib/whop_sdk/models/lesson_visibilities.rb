# frozen_string_literal: true

module WhopSDK
  module Models
    # The available visibilities for a lesson. Determines how / whether a lesson is
    # visible to users.
    module LessonVisibilities
      extend WhopSDK::Internal::Type::Enum

      VISIBLE = :visible
      HIDDEN = :hidden

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
