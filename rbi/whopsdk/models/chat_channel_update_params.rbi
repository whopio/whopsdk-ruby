# typed: strong

module Whopsdk
  module Models
    class ChatChannelUpdateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::ChatChannelUpdateParams, Whopsdk::Internal::AnyHash)
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
      sig { returns(T.nilable(Whopsdk::WhoCanPost::OrSymbol)) }
      attr_accessor :who_can_post

      # Who can react on a chat feed
      sig { returns(T.nilable(Whopsdk::WhoCanReact::OrSymbol)) }
      attr_accessor :who_can_react

      sig do
        params(
          ban_media: T.nilable(T::Boolean),
          ban_urls: T.nilable(T::Boolean),
          banned_words: T.nilable(T::Array[String]),
          user_posts_cooldown_seconds: T.nilable(Integer),
          who_can_post: T.nilable(Whopsdk::WhoCanPost::OrSymbol),
          who_can_react: T.nilable(Whopsdk::WhoCanReact::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
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
            who_can_post: T.nilable(Whopsdk::WhoCanPost::OrSymbol),
            who_can_react: T.nilable(Whopsdk::WhoCanReact::OrSymbol),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
