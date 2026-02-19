# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ForumPosts#create
    class ForumPostCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute experience_id
      #   The unique identifier of the experience to create this post in. For example,
      #   'exp_xxxxx'. Pass 'public' along with company_id to automatically use the
      #   company's public forum.
      #
      #   @return [String]
      required :experience_id, String

      # @!attribute attachments
      #   A list of file attachments to include with the post, such as images or videos.
      #
      #   @return [Array<WhopSDK::Models::ForumPostCreateParams::Attachment>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ForumPostCreateParams::Attachment] },
               nil?: true

      # @!attribute company_id
      #   The unique identifier of the company whose public forum to post in. Required
      #   when experience_id is 'public'. For example, 'biz_xxxxx'.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute content
      #   The main body of the post in Markdown format. For example, 'Check out this
      #   **update**'. Hidden if the post is paywalled and the viewer has not purchased
      #   access.
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute is_mention
      #   Whether to send this post as a mention notification to all users in the
      #   experience who have mentions enabled.
      #
      #   @return [Boolean, nil]
      optional :is_mention, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute parent_id
      #   The unique identifier of the parent post to comment on. Omit this field to
      #   create a top-level post.
      #
      #   @return [String, nil]
      optional :parent_id, String, nil?: true

      # @!attribute paywall_amount
      #   The price to unlock this post in the specified paywall currency. For example,
      #   5.00 for $5.00. When set, users must purchase access to view the post content.
      #
      #   @return [Float, nil]
      optional :paywall_amount, Float, nil?: true

      # @!attribute paywall_currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      optional :paywall_currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute pinned
      #   Whether this post should be pinned to the top of the forum.
      #
      #   @return [Boolean, nil]
      optional :pinned, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute poll
      #   A poll to attach to this post, allowing members to vote on options.
      #
      #   @return [WhopSDK::Models::ForumPostCreateParams::Poll, nil]
      optional :poll, -> { WhopSDK::ForumPostCreateParams::Poll }, nil?: true

      # @!attribute title
      #   The title of the post, displayed prominently at the top. Required for paywalled
      #   posts as it remains visible to non-purchasers.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute visibility
      #   The visibility types for forum posts
      #
      #   @return [Symbol, WhopSDK::Models::ForumPostVisibilityType, nil]
      optional :visibility, enum: -> { WhopSDK::ForumPostVisibilityType }, nil?: true

      # @!method initialize(experience_id:, attachments: nil, company_id: nil, content: nil, is_mention: nil, parent_id: nil, paywall_amount: nil, paywall_currency: nil, pinned: nil, poll: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ForumPostCreateParams} for more details.
      #
      #   @param experience_id [String] The unique identifier of the experience to create this post in. For example, 'ex
      #
      #   @param attachments [Array<WhopSDK::Models::ForumPostCreateParams::Attachment>, nil] A list of file attachments to include with the post, such as images or videos.
      #
      #   @param company_id [String, nil] The unique identifier of the company whose public forum to post in. Required whe
      #
      #   @param content [String, nil] The main body of the post in Markdown format. For example, 'Check out this
      #   \*\*upd
      #
      #   @param is_mention [Boolean, nil] Whether to send this post as a mention notification to all users in the experien
      #
      #   @param parent_id [String, nil] The unique identifier of the parent post to comment on. Omit this field to creat
      #
      #   @param paywall_amount [Float, nil] The price to unlock this post in the specified paywall currency. For example, 5.
      #
      #   @param paywall_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param pinned [Boolean, nil] Whether this post should be pinned to the top of the forum.
      #
      #   @param poll [WhopSDK::Models::ForumPostCreateParams::Poll, nil] A poll to attach to this post, allowing members to vote on options.
      #
      #   @param title [String, nil] The title of the post, displayed prominently at the top. Required for paywalled
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
        #   A poll to attach to this post, allowing members to vote on options.
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
