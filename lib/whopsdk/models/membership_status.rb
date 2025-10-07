# frozen_string_literal: true

module Whopsdk
  module Models
    # The status of a membership
    module MembershipStatus
      extend Whopsdk::Internal::Type::Enum

      TRIALING = :trialing
      ACTIVE = :active
      PAST_DUE = :past_due
      COMPLETED = :completed
      CANCELED = :canceled
      EXPIRED = :expired
      UNRESOLVED = :unresolved
      DRAFTED = :drafted

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
