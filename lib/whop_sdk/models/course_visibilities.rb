# frozen_string_literal: true

module WhopSDK
  module Models
    # The available visibilities for a course. Determines how / whether a course is
    # visible to users.
    module CourseVisibilities
      extend WhopSDK::Internal::Type::Enum

      VISIBLE = :visible
      HIDDEN = :hidden

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
