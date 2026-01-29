# typed: strong

module WhopSDK
  module Models
    class AIChatCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AIChatCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The title of the AI chat
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The title of the AI chat
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
