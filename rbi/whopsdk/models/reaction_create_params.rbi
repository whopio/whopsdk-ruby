# typed: strong

module Whopsdk
  module Models
    class ReactionCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::ReactionCreateParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the post or message to react to.
      sig { returns(String) }
      attr_accessor :resource_id

      # The emoji to react with (e.g., :heart: or '😀'). It will be ignored in forums,
      # as everything will be :heart:
      sig { returns(T.nilable(String)) }
      attr_accessor :emoji

      sig do
        params(
          resource_id: String,
          emoji: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the post or message to react to.
        resource_id:,
        # The emoji to react with (e.g., :heart: or '😀'). It will be ignored in forums,
        # as everything will be :heart:
        emoji: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            resource_id: String,
            emoji: T.nilable(String),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
