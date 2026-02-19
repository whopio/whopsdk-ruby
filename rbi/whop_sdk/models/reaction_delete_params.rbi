# typed: strong

module WhopSDK
  module Models
    class ReactionDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ReactionDeleteParams, WhopSDK::Internal::AnyHash)
        end

      # The emoji to remove, in shortcode or unicode format. For example, ':heart:' or a
      # unicode emoji. Required when the id refers to a message or post instead of a
      # reaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :emoji

      sig do
        params(
          emoji: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The emoji to remove, in shortcode or unicode format. For example, ':heart:' or a
        # unicode emoji. Required when the id refers to a message or post instead of a
        # reaction.
        emoji: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { emoji: T.nilable(String), request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
