# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ForumPosts#list
    class ForumPostListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute experience_id
      #   The ID of the experience to list forum posts for
      #
      #   @return [String]
      required :experience_id, String

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

      # @!attribute parent_id
      #   The ID of the parent post to list forum post comments for
      #
      #   @return [String, nil]
      optional :parent_id, String, nil?: true

      # @!attribute pinned
      #   Set to true to only return pinned posts
      #
      #   @return [Boolean, nil]
      optional :pinned, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(experience_id:, after: nil, before: nil, first: nil, last: nil, parent_id: nil, pinned: nil, request_options: {})
      #   @param experience_id [String] The ID of the experience to list forum posts for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param parent_id [String, nil] The ID of the parent post to list forum post comments for
      #
      #   @param pinned [Boolean, nil] Set to true to only return pinned posts
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
