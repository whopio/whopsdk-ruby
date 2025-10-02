# frozen_string_literal: true

module Whopsdk
  module Models
    # The status of an experience interface
    module AppStatuses
      extend Whopsdk::Internal::Type::Enum

      LIVE = :live
      UNLISTED = :unlisted
      HIDDEN = :hidden

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
