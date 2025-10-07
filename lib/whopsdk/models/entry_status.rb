# frozen_string_literal: true

module Whopsdk
  module Models
    # The status of an entry to a waitlist.
    module EntryStatus
      extend Whopsdk::Internal::Type::Enum

      DRAFTED = :drafted
      PENDING = :pending
      APPROVED = :approved
      DENIED = :denied
      ANY = :any

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
