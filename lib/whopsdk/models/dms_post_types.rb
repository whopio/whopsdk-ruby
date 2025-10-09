# frozen_string_literal: true

module Whopsdk
  module Models
    # The types of post
    module DmsPostTypes
      extend Whopsdk::Internal::Type::Enum

      REGULAR = :regular
      SYSTEM = :system
      AUTOMATED = :automated

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
