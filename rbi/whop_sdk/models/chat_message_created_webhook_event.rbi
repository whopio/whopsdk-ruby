# typed: strong

module WhopSDK
  module Models
    class ChatMessageCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::ChatMessageCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      sig { returns(WhopSDK::ChatMessageCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::ChatMessageCreatedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      sig do
        params(
          id: String,
          data: WhopSDK::ChatMessageCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"chat.message.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::ChatMessageCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            company_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ChatMessageCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience) }
        attr_reader :audience

        sig do
          params(
            audience:
              WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::OrHash
          ).void
        end
        attr_writer :audience

        sig { returns(WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel) }
        attr_reader :channel

        sig do
          params(
            channel:
              WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::OrHash
          ).void
        end
        attr_writer :channel

        # A message sent within an experience chat, direct message, or group chat.
        sig { returns(WhopSDK::Message) }
        attr_reader :message

        sig { params(message: WhopSDK::Message::OrHash).void }
        attr_writer :message

        sig { returns(String) }
        attr_accessor :reason

        sig do
          params(
            audience:
              WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::OrHash,
            channel:
              WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::OrHash,
            message: WhopSDK::Message::OrHash,
            reason: String
          ).returns(T.attached_class)
        end
        def self.new(
          audience:,
          channel:,
          # A message sent within an experience chat, direct message, or group chat.
          message:,
          reason:
        )
        end

        sig do
          override.returns(
            {
              audience: WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience,
              channel: WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel,
              message: WhopSDK::Message,
              reason: String
            }
          )
        end
        def to_hash
        end

        class Audience < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :user_ids

          sig do
            params(
              type:
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::Type::OrSymbol,
              user_ids: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(type:, user_ids: nil)
          end

          sig do
            override.returns(
              {
                type:
                  WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol,
                user_ids: T.nilable(T::Array[String])
              }
            )
          end
          def to_hash
          end

          module Type
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHANNEL =
              T.let(
                :channel,
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol
              )
            USERS =
              T.let(
                :users,
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Channel < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig { returns(T.nilable(String)) }
          attr_accessor :experience_id

          sig do
            params(
              id: String,
              type:
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type::OrSymbol,
              experience_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(id:, type:, experience_id: nil)
          end

          sig do
            override.returns(
              {
                id: String,
                type:
                  WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol,
                experience_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module Type
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHAT =
              T.let(
                :chat,
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
              )
            DIRECT_MESSAGE =
              T.let(
                :direct_message,
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
              )
            SUPPORT =
              T.let(
                :support,
                WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
