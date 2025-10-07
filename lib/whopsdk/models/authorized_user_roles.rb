# frozen_string_literal: true

module Whopsdk
  module Models
    # Possible roles an authorized user can have
    module AuthorizedUserRoles
      extend Whopsdk::Internal::Type::Enum

      OWNER = :owner
      ADMIN = :admin
      SALES_MANAGER = :sales_manager
      MODERATOR = :moderator
      APP_MANAGER = :app_manager
      SUPPORT = :support
      MANAGER = :manager

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
