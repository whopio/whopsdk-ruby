# typed: strong

module WhopSDK
  module Models
    class ChatChannelUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ChatChannelUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # Whether media uploads are banned in this chat
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :ban_media

      # Whether URLs are banned in this chat
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :ban_urls

      # List of banned words for this chat
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :banned_words

      # The cooldown period in seconds between user posts
      sig { returns(T.nilable(Integer)) }
      attr_accessor :user_posts_cooldown_seconds

      # Who can post on a chat feed
      sig { returns(T.nilable(WhopSDK::WhoCanPost::OrSymbol)) }
      attr_accessor :who_can_post

      # Who can react on a chat feed
      sig { returns(T.nilable(WhopSDK::WhoCanReact::OrSymbol)) }
      attr_accessor :who_can_react

      sig do
        params(
          ban_media: T.nilable(T::Boolean),
          ban_urls: T.nilable(T::Boolean),
          banned_words: T.nilable(T::Array[String]),
          user_posts_cooldown_seconds: T.nilable(Integer),
          who_can_post: T.nilable(WhopSDK::WhoCanPost::OrSymbol),
          who_can_react: T.nilable(WhopSDK::WhoCanReact::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether media uploads are banned in this chat
        ban_media: nil,
        # Whether URLs are banned in this chat
        ban_urls: nil,
        # List of banned words for this chat
        banned_words: nil,
        # The cooldown period in seconds between user posts
        user_posts_cooldown_seconds: nil,
        # Who can post on a chat feed
        who_can_post: nil,
        # Who can react on a chat feed
        who_can_react: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ban_media: T.nilable(T::Boolean),
            ban_urls: T.nilable(T::Boolean),
            banned_words: T.nilable(T::Array[String]),
            user_posts_cooldown_seconds: T.nilable(Integer),
            who_can_post: T.nilable(WhopSDK::WhoCanPost::OrSymbol),
            who_can_react: T.nilable(WhopSDK::WhoCanReact::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
