# frozen_string_literal: true

module Whopsdk
  module Models
    # The different types an access pass can be.
    module AccessPassType
      extend Whopsdk::Internal::Type::Enum

      REGULAR = :regular
      APP = :app
      EXPERIENCE_UPSELL = :experience_upsell
      API_ONLY = :api_only

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
