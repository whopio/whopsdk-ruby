# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Users#check_access
    class UserCheckAccessResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute access_level
      #   The permission level of the user
      #
      #   @return [Symbol, Whopsdk::Models::UserCheckAccessResponse::AccessLevel]
      required :access_level, enum: -> { Whopsdk::Models::UserCheckAccessResponse::AccessLevel }

      # @!attribute has_access
      #   Whether the user has access to the resource
      #
      #   @return [Boolean]
      required :has_access, Whopsdk::Internal::Type::Boolean

      # @!method initialize(access_level:, has_access:)
      #   The result of a has access check for the developer API
      #
      #   @param access_level [Symbol, Whopsdk::Models::UserCheckAccessResponse::AccessLevel] The permission level of the user
      #
      #   @param has_access [Boolean] Whether the user has access to the resource

      # The permission level of the user
      #
      # @see Whopsdk::Models::UserCheckAccessResponse#access_level
      module AccessLevel
        extend Whopsdk::Internal::Type::Enum

        NO_ACCESS = :no_access
        ADMIN = :admin
        CUSTOMER = :customer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
