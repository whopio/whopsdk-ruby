# frozen_string_literal: true

module WhopSDK
  module Models
    # The types of post
    module DmsPostTypes
      extend WhopSDK::Internal::Type::Enum

      REGULAR = :regular
      SYSTEM = :system
      AUTOMATED = :automated

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
