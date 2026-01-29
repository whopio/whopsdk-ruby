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

      # The emoji to remove (e.g., :heart: or '😀').
      sig { returns(T.nilable(String)) }
      attr_accessor :emoji

      sig do
        params(
          emoji: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The emoji to remove (e.g., :heart: or '😀').
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
