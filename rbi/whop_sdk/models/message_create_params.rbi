# typed: strong

module WhopSDK
  module Models
    class MessageCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MessageCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the channel or experience to send the message in. For
      # example, 'exp_xxxxx' or 'feed_xxxxx'.
      sig { returns(String) }
      attr_accessor :channel_id

      # The body of the message in Markdown format. For example, 'Hello **world**'.
      sig { returns(String) }
      attr_accessor :content

      # A list of file attachments to include with the message, such as images or
      # videos.
      sig do
        returns(T.nilable(T::Array[WhopSDK::MessageCreateParams::Attachment]))
      end
      attr_accessor :attachments

      # Automatically detect URLs in the message and generate link previews.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_detect_links

      # A poll to attach to this message, allowing recipients to vote on options.
      sig { returns(T.nilable(WhopSDK::MessageCreateParams::Poll)) }
      attr_reader :poll

      sig do
        params(poll: T.nilable(WhopSDK::MessageCreateParams::Poll::OrHash)).void
      end
      attr_writer :poll

      # The unique identifier of the message this is replying to, creating a threaded
      # reply.
      sig { returns(T.nilable(String)) }
      attr_accessor :replying_to_message_id

      sig do
        params(
          channel_id: String,
          content: String,
          attachments:
            T.nilable(
              T::Array[WhopSDK::MessageCreateParams::Attachment::OrHash]
            ),
          auto_detect_links: T.nilable(T::Boolean),
          poll: T.nilable(WhopSDK::MessageCreateParams::Poll::OrHash),
          replying_to_message_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the channel or experience to send the message in. For
        # example, 'exp_xxxxx' or 'feed_xxxxx'.
        channel_id:,
        # The body of the message in Markdown format. For example, 'Hello **world**'.
        content:,
        # A list of file attachments to include with the message, such as images or
        # videos.
        attachments: nil,
        # Automatically detect URLs in the message and generate link previews.
        auto_detect_links: nil,
        # A poll to attach to this message, allowing recipients to vote on options.
        poll: nil,
        # The unique identifier of the message this is replying to, creating a threaded
        # reply.
        replying_to_message_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            channel_id: String,
            content: String,
            attachments:
              T.nilable(T::Array[WhopSDK::MessageCreateParams::Attachment]),
            auto_detect_links: T.nilable(T::Boolean),
            poll: T.nilable(WhopSDK::MessageCreateParams::Poll),
            replying_to_message_id: T.nilable(String),
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
              WhopSDK::MessageCreateParams::Attachment,
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
              WhopSDK::MessageCreateParams::Poll,
              WhopSDK::Internal::AnyHash
            )
          end

        # The options for the poll. Must have sequential IDs starting from 1
        sig { returns(T::Array[WhopSDK::MessageCreateParams::Poll::Option]) }
        attr_accessor :options

        # A poll to attach to this message, allowing recipients to vote on options.
        sig do
          params(
            options:
              T::Array[WhopSDK::MessageCreateParams::Poll::Option::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The options for the poll. Must have sequential IDs starting from 1
          options:
        )
        end

        sig do
          override.returns(
            { options: T::Array[WhopSDK::MessageCreateParams::Poll::Option] }
          )
        end
        def to_hash
        end

        class Option < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::MessageCreateParams::Poll::Option,
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
