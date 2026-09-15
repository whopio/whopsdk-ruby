# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#list
    class UserListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Return results after this cursor. Use `page_info.end_cursor` from the previous
      #   response to fetch the next page.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Return results before this cursor. Use `page_info.start_cursor` from the
      #   previous response to fetch the previous page.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute first
      #   Number of results to return from the start of the range.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of results to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute query
      #   A search term to filter users by name or username.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(after: nil, before: nil, first: nil, last: nil, query: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::UserListParams} for more details.
      #
      #   @param after [String] Return results after this cursor. Use `page_info.end_cursor` from the previous r
      #
      #   @param before [String] Return results before this cursor. Use `page_info.start_cursor` from the previou
      #
      #   @param first [Integer] Number of results to return from the start of the range.
      #
      #   @param last [Integer] Number of results to return from the end of the range.
      #
      #   @param query [String] A search term to filter users by name or username.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
