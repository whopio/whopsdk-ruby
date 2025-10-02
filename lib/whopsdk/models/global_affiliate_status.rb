# frozen_string_literal: true

module Whopsdk
  module Models
    # The different statuses of the global affiliate program for an access pass.
    module GlobalAffiliateStatus
      extend Whopsdk::Internal::Type::Enum

      ENABLED = :enabled
      DISABLED = :disabled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
