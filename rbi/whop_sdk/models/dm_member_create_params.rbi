# typed: strong

module WhopSDK
  module Models
    class DmMemberCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::DmMemberCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the DM channel to add the member to
      sig { returns(String) }
      attr_accessor :channel_id

      # The ID of the user to add to the channel
      sig { returns(String) }
      attr_accessor :user_id

      sig do
        params(
          channel_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the DM channel to add the member to
        channel_id:,
        # The ID of the user to add to the channel
        user_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            channel_id: String,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
