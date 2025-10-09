# frozen_string_literal: true

module Whopsdk
  module Models
    # Who can react on a chat feed
    module WhoCanReact
      extend Whopsdk::Internal::Type::Enum

      EVERYONE = :everyone
      NO_ONE = :no_one

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
