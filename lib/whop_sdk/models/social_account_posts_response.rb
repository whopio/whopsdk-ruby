# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SocialAccounts#posts
    class SocialAccountPostsResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<WhopSDK::Models::SocialAccountPost>]
      required :data, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::SocialAccountPost] }

      # @!attribute page_info
      #
      #   @return [WhopSDK::Models::SocialAccountPostsResponse::PageInfo]
      required :page_info, -> { WhopSDK::Models::SocialAccountPostsResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   @param data [Array<WhopSDK::Models::SocialAccountPost>]
      #   @param page_info [WhopSDK::Models::SocialAccountPostsResponse::PageInfo]

      # @see WhopSDK::Models::SocialAccountPostsResponse#page_info
      class PageInfo < WhopSDK::Internal::Type::BaseModel
        # @!attribute end_cursor
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #
        #   @return [Boolean]
        required :has_next_page, WhopSDK::Internal::Type::Boolean

        # @!method initialize(end_cursor:, has_next_page:)
        #   @param end_cursor [String, nil]
        #   @param has_next_page [Boolean]
      end
    end
  end
end
