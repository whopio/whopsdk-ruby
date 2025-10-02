# frozen_string_literal: true

module Whopsdk
  module Models
    # The direction of the sort.
    module Direction
      extend Whopsdk::Internal::Type::Enum

      ASC = :asc
      DESC = :desc

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
