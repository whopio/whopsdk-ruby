# typed: strong

module WhopSDK
  module Models
    class ChatChannel < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::ChatChannel, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # Whether media uploads such as images and videos are blocked in this chat.
      sig { returns(T::Boolean) }
      attr_accessor :ban_media

      # Whether URL links are blocked from being posted in this chat.
      sig { returns(T::Boolean) }
      attr_accessor :ban_urls

      # A list of words that are automatically filtered from messages in this chat.
      sig { returns(T::Array[String]) }
      attr_accessor :banned_words

      # The experience this chat feed is attached to.
      sig { returns(WhopSDK::ChatChannel::Experience) }
      attr_reader :experience

      sig { params(experience: WhopSDK::ChatChannel::Experience::OrHash).void }
      attr_writer :experience

      # The minimum number of seconds a user must wait between consecutive messages.
      # Null if no cooldown is enforced.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :user_posts_cooldown_seconds

      # The permission level controlling which users can send messages in this chat.
      sig { returns(WhopSDK::WhoCanPost::TaggedSymbol) }
      attr_accessor :who_can_post

      # The permission level controlling which users can add reactions in this chat.
      sig { returns(WhopSDK::WhoCanReact::TaggedSymbol) }
      attr_accessor :who_can_react

      # A real-time chat feed attached to an experience, with configurable moderation
      # and posting permissions.
      sig do
        params(
          id: String,
          ban_media: T::Boolean,
          ban_urls: T::Boolean,
          banned_words: T::Array[String],
          experience: WhopSDK::ChatChannel::Experience::OrHash,
          user_posts_cooldown_seconds: T.nilable(Integer),
          who_can_post: WhopSDK::WhoCanPost::OrSymbol,
          who_can_react: WhopSDK::WhoCanReact::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # Whether media uploads such as images and videos are blocked in this chat.
        ban_media:,
        # Whether URL links are blocked from being posted in this chat.
        ban_urls:,
        # A list of words that are automatically filtered from messages in this chat.
        banned_words:,
        # The experience this chat feed is attached to.
        experience:,
        # The minimum number of seconds a user must wait between consecutive messages.
        # Null if no cooldown is enforced.
        user_posts_cooldown_seconds:,
        # The permission level controlling which users can send messages in this chat.
        who_can_post:,
        # The permission level controlling which users can add reactions in this chat.
        who_can_react:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ban_media: T::Boolean,
            ban_urls: T::Boolean,
            banned_words: T::Array[String],
            experience: WhopSDK::ChatChannel::Experience,
            user_posts_cooldown_seconds: T.nilable(Integer),
            who_can_post: WhopSDK::WhoCanPost::TaggedSymbol,
            who_can_react: WhopSDK::WhoCanReact::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Experience < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::ChatChannel::Experience, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the experience.
        sig { returns(String) }
        attr_accessor :id

        # The display name of this experience shown to users in the product navigation.
        # Maximum 255 characters.
        sig { returns(String) }
        attr_accessor :name

        # The experience this chat feed is attached to.
        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the experience.
          id:,
          # The display name of this experience shown to users in the product navigation.
          # Maximum 255 characters.
          name:
        )
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
