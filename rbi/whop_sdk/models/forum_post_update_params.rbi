# typed: strong

module WhopSDK
  module Models
    class ForumPostUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ForumPostUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # A replacement list of file attachments for this post, such as images or videos.
      sig do
        returns(T.nilable(T::Array[WhopSDK::ForumPostUpdateParams::Attachment]))
      end
      attr_accessor :attachments

      # The updated body of the post in Markdown format. For example, 'Check out this
      # **update**'. Hidden if the post is paywalled and the viewer has not purchased
      # access.
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Whether this post should be pinned to the top of the forum. Only top-level posts
      # can be pinned, not comments.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_pinned

      # The updated title of the post, displayed prominently at the top. Required for
      # paywalled posts as it remains visible to non-purchasers.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The visibility types for forum posts
      sig { returns(T.nilable(WhopSDK::ForumPostVisibilityType::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          attachments:
            T.nilable(
              T::Array[WhopSDK::ForumPostUpdateParams::Attachment::OrHash]
            ),
          content: T.nilable(String),
          is_pinned: T.nilable(T::Boolean),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::ForumPostVisibilityType::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A replacement list of file attachments for this post, such as images or videos.
        attachments: nil,
        # The updated body of the post in Markdown format. For example, 'Check out this
        # **update**'. Hidden if the post is paywalled and the viewer has not purchased
        # access.
        content: nil,
        # Whether this post should be pinned to the top of the forum. Only top-level posts
        # can be pinned, not comments.
        is_pinned: nil,
        # The updated title of the post, displayed prominently at the top. Required for
        # paywalled posts as it remains visible to non-purchasers.
        title: nil,
        # The visibility types for forum posts
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            attachments:
              T.nilable(T::Array[WhopSDK::ForumPostUpdateParams::Attachment]),
            content: T.nilable(String),
            is_pinned: T.nilable(T::Boolean),
            title: T.nilable(String),
            visibility: T.nilable(WhopSDK::ForumPostVisibilityType::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ForumPostUpdateParams::Attachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # Input for an attachment
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
