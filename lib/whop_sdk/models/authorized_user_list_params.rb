# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AuthorizedUsers#list
    class AuthorizedUserListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The unique identifier of the company to list authorized users for.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return authorized users created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return authorized users created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute role
      #   Filter authorized users by their assigned role within the company.
      #
      #   @return [Symbol, WhopSDK::Models::AuthorizedUserRoles, nil]
      optional :role, enum: -> { WhopSDK::AuthorizedUserRoles }

      # @!attribute user_id
      #   Filter results to a specific user to check if they are an authorized team
      #   member.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, role: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AuthorizedUserListParams} for more details.
      #
      #   @param account_id [String] The unique identifier of the company to list authorized users for.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time] Only return authorized users created after this timestamp.
      #
      #   @param created_before [Time] Only return authorized users created before this timestamp.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param role [Symbol, WhopSDK::Models::AuthorizedUserRoles] Filter authorized users by their assigned role within the company.
      #
      #   @param user_id [String] Filter results to a specific user to check if they are an authorized team member
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
