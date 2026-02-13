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

      # The unique identifier of the DM channel to add the new member to.
      sig { returns(String) }
      attr_accessor :channel_id

      # The unique identifier of the user to add to the DM channel. For example,
      # 'user_xxxxx'.
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
        # The unique identifier of the DM channel to add the new member to.
        channel_id:,
        # The unique identifier of the user to add to the DM channel. For example,
        # 'user_xxxxx'.
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
