# typed: strong

module WhopSDK
  module Models
    class ChatReactionCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::ChatReactionCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      sig { returns(WhopSDK::ChatReactionCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::ChatReactionCreatedWebhookEvent::Data::OrHash
        ).void
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
          data: WhopSDK::ChatReactionCreatedWebhookEvent::Data::OrHash,
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
        type: :"chat.reaction.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::ChatReactionCreatedWebhookEvent::Data,
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
              WhopSDK::ChatReactionCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        sig do
          returns(WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience)
        end
        attr_reader :audience

        sig do
          params(
            audience:
              WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::OrHash
          ).void
        end
        attr_writer :audience

        sig { returns(WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel) }
        attr_reader :channel

        sig do
          params(
            channel:
              WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::OrHash
          ).void
        end
        attr_writer :channel

        # A message sent within an experience chat, direct message, or group chat.
        sig { returns(WhopSDK::Message) }
        attr_reader :message

        sig { params(message: WhopSDK::Message::OrHash).void }
        attr_writer :message

        # A single reaction left by a user on a feed post, such as a like or emoji.
        sig { returns(WhopSDK::Reaction) }
        attr_reader :reaction

        sig { params(reaction: WhopSDK::Reaction::OrHash).void }
        attr_writer :reaction

        sig { returns(String) }
        attr_accessor :reason

        sig do
          params(
            audience:
              WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::OrHash,
            channel:
              WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::OrHash,
            message: WhopSDK::Message::OrHash,
            reaction: WhopSDK::Reaction::OrHash,
            reason: String
          ).returns(T.attached_class)
        end
        def self.new(
          audience:,
          channel:,
          # A message sent within an experience chat, direct message, or group chat.
          message:,
          # A single reaction left by a user on a feed post, such as a like or emoji.
          reaction:,
          reason:
        )
        end

        sig do
          override.returns(
            {
              audience:
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience,
              channel: WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel,
              message: WhopSDK::Message,
              reaction: WhopSDK::Reaction,
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
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :user_ids

          sig do
            params(
              type:
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::Type::OrSymbol,
              user_ids: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(type:, user_ids: nil)
          end

          sig do
            override.returns(
              {
                type:
                  WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol,
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
                  WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHANNEL =
              T.let(
                :channel,
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol
              )
            USERS =
              T.let(
                :users,
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::Type::TaggedSymbol
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
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig { returns(T.nilable(String)) }
          attr_accessor :experience_id

          sig do
            params(
              id: String,
              type:
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type::OrSymbol,
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
                  WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol,
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
                  WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHAT =
              T.let(
                :chat,
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
              )
            DIRECT_MESSAGE =
              T.let(
                :direct_message,
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
              )
            SUPPORT =
              T.let(
                :support,
                WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type::TaggedSymbol
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
