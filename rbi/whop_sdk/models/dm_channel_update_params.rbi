# typed: strong

module WhopSDK
  module Models
    class DmChannelUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::DmChannelUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The custom name for the DM channel
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_name

      sig do
        params(
          custom_name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The custom name for the DM channel
        custom_name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            custom_name: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
