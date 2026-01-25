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

      # The attachments for this message
      sig do
        returns(T.nilable(T::Array[WhopSDK::MessageUpdateParams::Attachment]))
      end
      attr_accessor :attachments

      # The content of the message in Markdown format
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Whether this message is pinned
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
        # The attachments for this message
        attachments: nil,
        # The content of the message in Markdown format
        content: nil,
        # Whether this message is pinned
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
