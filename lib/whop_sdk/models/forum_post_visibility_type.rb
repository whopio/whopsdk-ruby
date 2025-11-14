# frozen_string_literal: true

module WhopSDK
  module Models
    # The visibility types for forum posts
    module ForumPostVisibilityType
      extend WhopSDK::Internal::Type::Enum

      MEMBERS_ONLY = :members_only
      GLOBALLY_VISIBLE = :globally_visible

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
