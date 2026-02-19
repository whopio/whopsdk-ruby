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

      # A new custom display name for the DM channel. For example, 'Project Discussion'.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_name

      sig do
        params(
          custom_name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A new custom display name for the DM channel. For example, 'Project Discussion'.
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
