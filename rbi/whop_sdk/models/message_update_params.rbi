# typed: strong

module WhopSDK
  module Models
    class MessageUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MessageUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # A replacement list of file attachments for this message, such as images or
      # videos.
      sig do
        returns(T.nilable(T::Array[WhopSDK::MessageUpdateParams::Attachment]))
      end
      attr_accessor :attachments

      # The updated body of the message in Markdown format. For example, 'Hello
      # **world**'.
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Whether this message should be pinned to the top of the channel.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_pinned

      sig do
        params(
          attachments:
            T.nilable(
              T::Array[WhopSDK::MessageUpdateParams::Attachment::OrHash]
            ),
          content: T.nilable(String),
          is_pinned: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A replacement list of file attachments for this message, such as images or
        # videos.
        attachments: nil,
        # The updated body of the message in Markdown format. For example, 'Hello
        # **world**'.
        content: nil,
        # Whether this message should be pinned to the top of the channel.
        is_pinned: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            attachments:
              T.nilable(T::Array[WhopSDK::MessageUpdateParams::Attachment]),
            content: T.nilable(String),
            is_pinned: T.nilable(T::Boolean),
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
              WhopSDK::MessageUpdateParams::Attachment,
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
