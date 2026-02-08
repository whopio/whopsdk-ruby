# typed: strong

module WhopSDK
  module Models
    class ChatChannel < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::ChatChannel, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # Whether or not media is banned in this chat
      sig { returns(T::Boolean) }
      attr_accessor :ban_media

      # Whether or not URLs are banned in this chat
      sig { returns(T::Boolean) }
      attr_accessor :ban_urls

      # List of banned words in this chat
      sig { returns(T::Array[String]) }
      attr_accessor :banned_words

      # The experience for this chat
      sig { returns(WhopSDK::ChatChannel::Experience) }
      attr_reader :experience

      sig { params(experience: WhopSDK::ChatChannel::Experience::OrHash).void }
      attr_writer :experience

      # The number of seconds a user needs to wait before posting again, if any
      sig { returns(T.nilable(Integer)) }
      attr_accessor :user_posts_cooldown_seconds

      # Who can post on this chat
      sig { returns(WhopSDK::WhoCanPost::TaggedSymbol) }
      attr_accessor :who_can_post

      # Who can react on this chat
      sig { returns(WhopSDK::WhoCanReact::TaggedSymbol) }
      attr_accessor :who_can_react

      # Represents a Chat feed
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
        # Whether or not media is banned in this chat
        ban_media:,
        # Whether or not URLs are banned in this chat
        ban_urls:,
        # List of banned words in this chat
        banned_words:,
        # The experience for this chat
        experience:,
        # The number of seconds a user needs to wait before posting again, if any
        user_posts_cooldown_seconds:,
        # Who can post on this chat
        who_can_post:,
        # Who can react on this chat
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

        # The written name of the description.
        sig { returns(String) }
        attr_accessor :name

        # The experience for this chat
        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the experience.
          id:,
          # The written name of the description.
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
