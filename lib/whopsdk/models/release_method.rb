# frozen_string_literal: true

module Whopsdk
  module Models
    # The methods of how a plan can be released (including raffles and waitlists).
    module ReleaseMethod
      extend Whopsdk::Internal::Type::Enum

      BUY_NOW = :buy_now
      WAITLIST = :waitlist
      RAFFLE = :raffle

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
