# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#list
    class UserListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   A cursor; returns users after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns users before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute first
      #   The number of users to return (max 50).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of users to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute query
      #   A search term to filter users by name or username.
      #
      #   @return [String, nil]
      optional :query, String

      # @!method initialize(after: nil, before: nil, first: nil, last: nil, query: nil, request_options: {})
      #   @param after [String] A cursor; returns users after this position.
      #
      #   @param before [String] A cursor; returns users before this position.
      #
      #   @param first [Integer] The number of users to return (max 50).
      #
      #   @param last [Integer] The number of users to return from the end of the range.
      #
      #   @param query [String] A search term to filter users by name or username.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
