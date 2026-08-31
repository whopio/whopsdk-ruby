# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#check_access
    class UserCheckAccessResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute access_level
      #
      #   @return [Symbol, WhopSDK::Models::UserCheckAccessResponse::AccessLevel]
      required :access_level, enum: -> { WhopSDK::Models::UserCheckAccessResponse::AccessLevel }

      # @!attribute has_access
      #
      #   @return [Boolean]
      required :has_access, WhopSDK::Internal::Type::Boolean

      # @!method initialize(access_level:, has_access:)
      #   @param access_level [Symbol, WhopSDK::Models::UserCheckAccessResponse::AccessLevel]
      #   @param has_access [Boolean]

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
