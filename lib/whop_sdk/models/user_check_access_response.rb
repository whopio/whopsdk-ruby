# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#check_access
    class UserCheckAccessResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute access_level
      #   The permission level of the user
      #
      #   @return [Symbol, WhopSDK::Models::UserCheckAccessResponse::AccessLevel]
      required :access_level, enum: -> { WhopSDK::Models::UserCheckAccessResponse::AccessLevel }

      # @!attribute has_access
      #   Whether the user has access to the resource
      #
      #   @return [Boolean]
      required :has_access, WhopSDK::Internal::Type::Boolean

      # @!method initialize(access_level:, has_access:)
      #   The result of a has access check for the developer API
      #
      #   @param access_level [Symbol, WhopSDK::Models::UserCheckAccessResponse::AccessLevel] The permission level of the user
      #
      #   @param has_access [Boolean] Whether the user has access to the resource

      # The permission level of the user
      #
      # @see WhopSDK::Models::UserCheckAccessResponse#access_level
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
end
