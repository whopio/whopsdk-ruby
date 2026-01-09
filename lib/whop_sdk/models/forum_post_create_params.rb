# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ForumPosts#create
    class ForumPostCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute experience_id
      #   The experience to create this post in
      #
      #   @return [String]
      required :experience_id, String

      # @!attribute attachments
      #   The attachments for this post
      #
      #   @return [Array<WhopSDK::Models::ForumPostCreateParams::Attachment>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ForumPostCreateParams::Attachment] },
               nil?: true

      # @!attribute content
      #   This is the main body of the post in Markdown format. Hidden if paywalled and
      #   user hasn't purchased access to it.
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute is_mention
      #   This is used to determine if the post should be sent as a 'mention' notification
      #   to all of the users who are in the experience. This means that anyone with
      #   'mentions' enabled will receive a notification about this post.
      #
      #   @return [Boolean, nil]
      optional :is_mention, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute parent_id
      #   The ID of the parent post. Set it to the ID of the post you want to comment on
      #   or don't include it if its a top level post.
      #
      #   @return [String, nil]
      optional :parent_id, String, nil?: true

      # @!attribute paywall_amount
      #   The amount to paywall this post by. A paywalled post requires the user to
      #   purchase it in order to view its content.
      #
      #   @return [Float, nil]
      optional :paywall_amount, Float, nil?: true

      # @!attribute paywall_currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      optional :paywall_currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute pinned
      #   Whether the post should be pinned
      #
      #   @return [Boolean, nil]
      optional :pinned, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute poll
      #   The poll for this post
      #
      #   @return [WhopSDK::Models::ForumPostCreateParams::Poll, nil]
      optional :poll, -> { WhopSDK::ForumPostCreateParams::Poll }, nil?: true

      # @!attribute title
      #   The title of the post. Only visible if paywalled.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute visibility
      #   The visibility types for forum posts
      #
      #   @return [Symbol, WhopSDK::Models::ForumPostVisibilityType, nil]
      optional :visibility, enum: -> { WhopSDK::ForumPostVisibilityType }, nil?: true

      # @!method initialize(experience_id:, attachments: nil, content: nil, is_mention: nil, parent_id: nil, paywall_amount: nil, paywall_currency: nil, pinned: nil, poll: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ForumPostCreateParams} for more details.
      #
      #   @param experience_id [String] The experience to create this post in
      #
      #   @param attachments [Array<WhopSDK::Models::ForumPostCreateParams::Attachment>, nil] The attachments for this post
      #
      #   @param content [String, nil] This is the main body of the post in Markdown format. Hidden if paywalled and us
      #
      #   @param is_mention [Boolean, nil] This is used to determine if the post should be sent as a 'mention' notification
      #
      #   @param parent_id [String, nil] The ID of the parent post. Set it to the ID of the post you want to comment on o
      #
      #   @param paywall_amount [Float, nil] The amount to paywall this post by. A paywalled post requires the user to purcha
      #
      #   @param paywall_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param pinned [Boolean, nil] Whether the post should be pinned
      #
      #   @param poll [WhopSDK::Models::ForumPostCreateParams::Poll, nil] The poll for this post
      #
      #   @param title [String, nil] The title of the post. Only visible if paywalled.
      #
      #   @param visibility [Symbol, WhopSDK::Models::ForumPostVisibilityType, nil] The visibility types for forum posts
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Input for an attachment
        #
        #   @param id [String] The ID of an existing file object.
      end

      class Poll < WhopSDK::Internal::Type::BaseModel
        # @!attribute options
        #   The options for the poll. Must have sequential IDs starting from 1
        #
        #   @return [Array<WhopSDK::Models::ForumPostCreateParams::Poll::Option>]
        required :options, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ForumPostCreateParams::Poll::Option] }

        # @!method initialize(options:)
        #   The poll for this post
        #
        #   @param options [Array<WhopSDK::Models::ForumPostCreateParams::Poll::Option>] The options for the poll. Must have sequential IDs starting from 1

        class Option < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Sequential ID for the poll option (starting from '1')
          #
          #   @return [String]
          required :id, String

          # @!attribute text
          #   The text of the poll option
          #
          #   @return [String]
          required :text, String

          # @!method initialize(id:, text:)
          #   Input type for a single poll option
          #
          #   @param id [String] Sequential ID for the poll option (starting from '1')
          #
          #   @param text [String] The text of the poll option
        end
      end
    end
  end
end
