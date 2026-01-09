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

      # The ID of the channel or experience to send to.
      sig { returns(String) }
      attr_accessor :channel_id

      # The content of the message in Markdown format.
      sig { returns(String) }
      attr_accessor :content

      # The attachments for this message, such as videos or images.
      sig do
        returns(T.nilable(T::Array[WhopSDK::MessageCreateParams::Attachment]))
      end
      attr_accessor :attachments

      # The poll for this message
      sig { returns(T.nilable(WhopSDK::MessageCreateParams::Poll)) }
      attr_reader :poll

      sig do
        params(poll: T.nilable(WhopSDK::MessageCreateParams::Poll::OrHash)).void
      end
      attr_writer :poll

      sig do
        params(
          channel_id: String,
          content: String,
          attachments:
            T.nilable(
              T::Array[WhopSDK::MessageCreateParams::Attachment::OrHash]
            ),
          poll: T.nilable(WhopSDK::MessageCreateParams::Poll::OrHash),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the channel or experience to send to.
        channel_id:,
        # The content of the message in Markdown format.
        content:,
        # The attachments for this message, such as videos or images.
        attachments: nil,
        # The poll for this message
        poll: nil,
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
            poll: T.nilable(WhopSDK::MessageCreateParams::Poll),
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

        # The poll for this message
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
