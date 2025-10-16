# frozen_string_literal: true

module WhopSDK
  module Models
    # The different levels of visibility for resources
    module VisibilityFilter
      extend WhopSDK::Internal::Type::Enum

      VISIBLE = :visible
      HIDDEN = :hidden
      ARCHIVED = :archived
      QUICK_LINK = :quick_link
      ALL = :all
      NOT_QUICK_LINK = :not_quick_link
      NOT_ARCHIVED = :not_archived

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
