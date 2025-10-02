# frozen_string_literal: true

module Whopsdk
  module Models
    # Visibility of a resource
    module Visibility
      extend Whopsdk::Internal::Type::Enum

      VISIBLE = :visible
      HIDDEN = :hidden
      ARCHIVED = :archived
      QUICK_LINK = :quick_link

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
