# typed: strong

module WhopSDK
  module Models
    class AIChatUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AIChatUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The new title for the AI chat
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The new title for the AI chat
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { title: T.nilable(String), request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
