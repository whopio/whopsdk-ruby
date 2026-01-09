# typed: strong

module WhopSDK
  module Models
    class ForumPostCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ForumPostCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The experience to create this post in
      sig { returns(String) }
      attr_accessor :experience_id

      # The attachments for this post
      sig do
        returns(T.nilable(T::Array[WhopSDK::ForumPostCreateParams::Attachment]))
      end
      attr_accessor :attachments

      # This is the main body of the post in Markdown format. Hidden if paywalled and
      # user hasn't purchased access to it.
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # This is used to determine if the post should be sent as a 'mention' notification
      # to all of the users who are in the experience. This means that anyone with
      # 'mentions' enabled will receive a notification about this post.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_mention

      # The ID of the parent post. Set it to the ID of the post you want to comment on
      # or don't include it if its a top level post.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_id

      # The amount to paywall this post by. A paywalled post requires the user to
      # purchase it in order to view its content.
      sig { returns(T.nilable(Float)) }
      attr_accessor :paywall_amount

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
      attr_accessor :paywall_currency

      # Whether the post should be pinned
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :pinned

      # The poll for this post
      sig { returns(T.nilable(WhopSDK::ForumPostCreateParams::Poll)) }
      attr_reader :poll

      sig do
        params(
          poll: T.nilable(WhopSDK::ForumPostCreateParams::Poll::OrHash)
        ).void
      end
      attr_writer :poll

      # The title of the post. Only visible if paywalled.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The visibility types for forum posts
      sig { returns(T.nilable(WhopSDK::ForumPostVisibilityType::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          experience_id: String,
          attachments:
            T.nilable(
              T::Array[WhopSDK::ForumPostCreateParams::Attachment::OrHash]
            ),
          content: T.nilable(String),
          is_mention: T.nilable(T::Boolean),
          parent_id: T.nilable(String),
          paywall_amount: T.nilable(Float),
          paywall_currency: T.nilable(WhopSDK::Currency::OrSymbol),
          pinned: T.nilable(T::Boolean),
          poll: T.nilable(WhopSDK::ForumPostCreateParams::Poll::OrHash),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::ForumPostVisibilityType::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The experience to create this post in
        experience_id:,
        # The attachments for this post
        attachments: nil,
        # This is the main body of the post in Markdown format. Hidden if paywalled and
        # user hasn't purchased access to it.
        content: nil,
        # This is used to determine if the post should be sent as a 'mention' notification
        # to all of the users who are in the experience. This means that anyone with
        # 'mentions' enabled will receive a notification about this post.
        is_mention: nil,
        # The ID of the parent post. Set it to the ID of the post you want to comment on
        # or don't include it if its a top level post.
        parent_id: nil,
        # The amount to paywall this post by. A paywalled post requires the user to
        # purchase it in order to view its content.
        paywall_amount: nil,
        # The available currencies on the platform
        paywall_currency: nil,
        # Whether the post should be pinned
        pinned: nil,
        # The poll for this post
        poll: nil,
        # The title of the post. Only visible if paywalled.
        title: nil,
        # The visibility types for forum posts
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            experience_id: String,
            attachments:
              T.nilable(T::Array[WhopSDK::ForumPostCreateParams::Attachment]),
            content: T.nilable(String),
            is_mention: T.nilable(T::Boolean),
            parent_id: T.nilable(String),
            paywall_amount: T.nilable(Float),
            paywall_currency: T.nilable(WhopSDK::Currency::OrSymbol),
            pinned: T.nilable(T::Boolean),
            poll: T.nilable(WhopSDK::ForumPostCreateParams::Poll),
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
              WhopSDK::ForumPostCreateParams::Attachment,
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

      class Poll < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ForumPostCreateParams::Poll,
              WhopSDK::Internal::AnyHash
            )
          end

        # The options for the poll. Must have sequential IDs starting from 1
        sig { returns(T::Array[WhopSDK::ForumPostCreateParams::Poll::Option]) }
        attr_accessor :options

        # The poll for this post
        sig do
          params(
            options:
              T::Array[WhopSDK::ForumPostCreateParams::Poll::Option::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The options for the poll. Must have sequential IDs starting from 1
          options:
        )
        end

        sig do
          override.returns(
            { options: T::Array[WhopSDK::ForumPostCreateParams::Poll::Option] }
          )
        end
        def to_hash
        end

        class Option < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ForumPostCreateParams::Poll::Option,
                WhopSDK::Internal::AnyHash
              )
            end

          # Sequential ID for the poll option (starting from '1')
          sig { returns(String) }
          attr_accessor :id

          # The text of the poll option
          sig { returns(String) }
          attr_accessor :text

          # Input type for a single poll option
          sig { params(id: String, text: String).returns(T.attached_class) }
          def self.new(
            # Sequential ID for the poll option (starting from '1')
            id:,
            # The text of the poll option
            text:
          )
          end

          sig { override.returns({ id: String, text: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
