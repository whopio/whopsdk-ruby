# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SocialAccounts#posts
    class SocialAccountPostsParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The Account (a biz\_ identifier) the social account is connected to.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute after
      #   Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute first
      #   The number of posts to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute post_id
      #   Return only the single post with this platform id, instead of the full list.
      #
      #   @return [String, nil]
      optional :post_id, String

      # @!method initialize(id:, account_id:, after: nil, first: nil, post_id: nil, request_options: {})
      #   @param id [String]
      #
      #   @param account_id [String] The Account (a biz\_ identifier) the social account is connected to.
      #
      #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @param first [Integer] The number of posts to return.
      #
      #   @param post_id [String] Return only the single post with this platform id, instead of the full list.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
