# typed: strong

module WhopSDK
  module Models
    class AIChatCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AIChatCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The text content of the first message sent in the chat
      sig { returns(String) }
      attr_accessor :message_text

      # The ID of the company to set as the current company in context for the AI chat
      sig { returns(T.nilable(String)) }
      attr_accessor :current_company_id

      # The IDs of existing uploaded attachments to include in the first message to the
      # agent
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::AIChatCreateParams::MessageAttachment])
        )
      end
      attr_accessor :message_attachments

      # The title of the AI chat
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          message_text: String,
          current_company_id: T.nilable(String),
          message_attachments:
            T.nilable(
              T::Array[WhopSDK::AIChatCreateParams::MessageAttachment::OrHash]
            ),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The text content of the first message sent in the chat
        message_text:,
        # The ID of the company to set as the current company in context for the AI chat
        current_company_id: nil,
        # The IDs of existing uploaded attachments to include in the first message to the
        # agent
        message_attachments: nil,
        # The title of the AI chat
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            message_text: String,
            current_company_id: T.nilable(String),
            message_attachments:
              T.nilable(
                T::Array[WhopSDK::AIChatCreateParams::MessageAttachment]
              ),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class MessageAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AIChatCreateParams::MessageAttachment,
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
