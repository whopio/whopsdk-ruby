# frozen_string_literal: true

module WhopSDK
  module Models
    # Possible roles an authorized user can have
    module AuthorizedUserRoles
      extend WhopSDK::Internal::Type::Enum

      OWNER = :owner
      ADMIN = :admin
      SALES_MANAGER = :sales_manager
      MODERATOR = :moderator
      APP_MANAGER = :app_manager
      SUPPORT = :support
      MANAGER = :manager
      CUSTOM = :custom

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
