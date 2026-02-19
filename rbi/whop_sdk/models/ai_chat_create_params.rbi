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

      # The text content of the first message to send to the AI agent.
      sig { returns(String) }
      attr_accessor :message_text

      # The unique identifier of the company to set as context for the AI chat (e.g.,
      # "biz_XXXXX").
      sig { returns(T.nilable(String)) }
      attr_accessor :current_company_id

      # A list of previously uploaded file attachments to include with the first
      # message.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::AIChatCreateParams::MessageAttachment])
        )
      end
      attr_accessor :message_attachments

      # The source of an AI chat message
      sig do
        returns(T.nilable(WhopSDK::AIChatCreateParams::MessageSource::OrSymbol))
      end
      attr_accessor :message_source

      # An optional display title for the AI chat thread (e.g., "Help with billing").
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
          message_source:
            T.nilable(WhopSDK::AIChatCreateParams::MessageSource::OrSymbol),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The text content of the first message to send to the AI agent.
        message_text:,
        # The unique identifier of the company to set as context for the AI chat (e.g.,
        # "biz_XXXXX").
        current_company_id: nil,
        # A list of previously uploaded file attachments to include with the first
        # message.
        message_attachments: nil,
        # The source of an AI chat message
        message_source: nil,
        # An optional display title for the AI chat thread (e.g., "Help with billing").
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
            message_source:
              T.nilable(WhopSDK::AIChatCreateParams::MessageSource::OrSymbol),
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

      # The source of an AI chat message
      module MessageSource
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AIChatCreateParams::MessageSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANUAL =
          T.let(
            :manual,
            WhopSDK::AIChatCreateParams::MessageSource::TaggedSymbol
          )
        SUGGESTION =
          T.let(
            :suggestion,
            WhopSDK::AIChatCreateParams::MessageSource::TaggedSymbol
          )
        LINK =
          T.let(:link, WhopSDK::AIChatCreateParams::MessageSource::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AIChatCreateParams::MessageSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
