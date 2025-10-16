# frozen_string_literal: true

module WhopSDK
  module Models
    # The different statuses a Member can have.
    module MemberStatuses
      extend WhopSDK::Internal::Type::Enum

      DRAFTED = :drafted
      JOINED = :joined
      LEFT = :left

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
