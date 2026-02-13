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

      # The unique identifier of the message or forum post to react to.
      sig { returns(String) }
      attr_accessor :resource_id

      # The emoji to react with, in shortcode or unicode format. For example, ':heart:'
      # or a unicode emoji. Ignored in forums where reactions are always likes.
      sig { returns(T.nilable(String)) }
      attr_accessor :emoji

      # The unique identifier of a poll option to vote for. Only valid when the target
      # message or post contains a poll.
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
        # The unique identifier of the message or forum post to react to.
        resource_id:,
        # The emoji to react with, in shortcode or unicode format. For example, ':heart:'
        # or a unicode emoji. Ignored in forums where reactions are always likes.
        emoji: nil,
        # The unique identifier of a poll option to vote for. Only valid when the target
        # message or post contains a poll.
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
