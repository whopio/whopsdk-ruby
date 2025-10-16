# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AuthorizedUsers#list
    class AuthorizedUserListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list authorized users for
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute role
      #   Possible roles an authorized user can have
      #
      #   @return [Symbol, WhopSDK::Models::AuthorizedUserRoles, nil]
      optional :role, enum: -> { WhopSDK::AuthorizedUserRoles }, nil?: true

      # @!attribute user_id
      #   Filter by the user ID to check if the user is an authorized user
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, first: nil, last: nil, role: nil, user_id: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list authorized users for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param role [Symbol, WhopSDK::Models::AuthorizedUserRoles, nil] Possible roles an authorized user can have
      #
      #   @param user_id [String, nil] Filter by the user ID to check if the user is an authorized user
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
