# typed: strong

module Whopsdk
  module Models
    class MessageCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::MessageCreateParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the channel or experience to send to.
      sig { returns(String) }
      attr_accessor :channel_id

      # The content of the message in Markdown format.
      sig { returns(String) }
      attr_accessor :content

      # The attachments for this message, such as videos or images.
      sig do
        returns(T.nilable(T::Array[Whopsdk::MessageCreateParams::Attachment]))
      end
      attr_accessor :attachments

      # The poll for this message
      sig { returns(T.nilable(Whopsdk::MessageCreateParams::Poll)) }
      attr_reader :poll

      sig do
        params(poll: T.nilable(Whopsdk::MessageCreateParams::Poll::OrHash)).void
      end
      attr_writer :poll

      sig do
        params(
          channel_id: String,
          content: String,
          attachments:
            T.nilable(
              T::Array[Whopsdk::MessageCreateParams::Attachment::OrHash]
            ),
          poll: T.nilable(Whopsdk::MessageCreateParams::Poll::OrHash),
          request_options: Whopsdk::RequestOptions::OrHash
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
              T.nilable(T::Array[Whopsdk::MessageCreateParams::Attachment]),
            poll: T.nilable(Whopsdk::MessageCreateParams::Poll),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Attachment < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::MessageCreateParams::Attachment,
              Whopsdk::Internal::AnyHash
            )
          end

        # The ID of an existing attachment object. Use this when updating a resource and
        # keeping a subset of the attachments. Don't use this unless you know what you're
        # doing.
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # This ID should be used the first time you upload an attachment. It is the ID of
        # the direct upload that was created when uploading the file to S3 via the
        # mediaDirectUpload mutation.
        sig { returns(T.nilable(String)) }
        attr_accessor :direct_upload_id

        # Input for an attachment
        sig do
          params(
            id: T.nilable(String),
            direct_upload_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          id: nil,
          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          direct_upload_id: nil
        )
        end

        sig do
          override.returns(
            { id: T.nilable(String), direct_upload_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end

      class Poll < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::MessageCreateParams::Poll,
              Whopsdk::Internal::AnyHash
            )
          end

        # The options for the poll. Must have sequential IDs starting from 1
        sig { returns(T::Array[Whopsdk::MessageCreateParams::Poll::Option]) }
        attr_accessor :options

        # The poll for this message
        sig do
          params(
            options:
              T::Array[Whopsdk::MessageCreateParams::Poll::Option::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The options for the poll. Must have sequential IDs starting from 1
          options:
        )
        end

        sig do
          override.returns(
            { options: T::Array[Whopsdk::MessageCreateParams::Poll::Option] }
          )
        end
        def to_hash
        end

        class Option < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::MessageCreateParams::Poll::Option,
                Whopsdk::Internal::AnyHash
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
