# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#check_access
    class UserCheckAccessResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute access_level
      #   The permission level of the user
      #
      #   @return [Symbol, WhopSDK::Models::AccessLevel]
      required :access_level, enum: -> { WhopSDK::AccessLevel }

      # @!attribute has_access
      #   Whether the user has access to the resource
      #
      #   @return [Boolean]
      required :has_access, WhopSDK::Internal::Type::Boolean

      # @!method initialize(access_level:, has_access:)
      #   The result of a has access check for the developer API
      #
      #   @param access_level [Symbol, WhopSDK::Models::AccessLevel] The permission level of the user
      #
      #   @param has_access [Boolean] Whether the user has access to the resource
    end
  end
end
