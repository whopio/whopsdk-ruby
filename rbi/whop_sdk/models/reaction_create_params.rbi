# typed: strong

module WhopSDK
  module Models
    class ReactionCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ReactionCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the post or message to react to.
      sig { returns(String) }
      attr_accessor :resource_id

      # The emoji to react with (e.g., :heart: or '😀'). It will be ignored in forums,
      # as everything will be :heart:
      sig { returns(T.nilable(String)) }
      attr_accessor :emoji

      # The ID of the poll option to vote for. Only valid for messages or posts with
      # polls.
      sig { returns(T.nilable(String)) }
      attr_accessor :poll_option_id

      sig do
        params(
          resource_id: String,
          emoji: T.nilable(String),
          poll_option_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the post or message to react to.
        resource_id:,
        # The emoji to react with (e.g., :heart: or '😀'). It will be ignored in forums,
        # as everything will be :heart:
        emoji: nil,
        # The ID of the poll option to vote for. Only valid for messages or posts with
        # polls.
        poll_option_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            resource_id: String,
            emoji: T.nilable(String),
            poll_option_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
