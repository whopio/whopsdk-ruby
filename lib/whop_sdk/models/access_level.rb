# frozen_string_literal: true

module WhopSDK
  module Models
    # The access level a given user (or company) has to an access pass or company.
    module AccessLevel
      extend WhopSDK::Internal::Type::Enum

      NO_ACCESS = :no_access
      ADMIN = :admin
      CUSTOMER = :customer

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
