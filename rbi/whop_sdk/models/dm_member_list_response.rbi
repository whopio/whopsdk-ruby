# typed: strong

module WhopSDK
  module Models
    class DmMemberListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::DmMemberListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The ID of the DM channel
      sig { returns(String) }
      attr_accessor :channel_id

      # Timestamp when the member last viewed the channel (in milliseconds since Unix
      # epoch)
      sig { returns(T.nilable(String)) }
      attr_accessor :last_viewed_at

      # The status of the membership (requested, accepted, rejected)
      sig { returns(WhopSDK::DmFeedMemberStatuses::TaggedSymbol) }
      attr_accessor :status

      # The ID of the user who is a member of the channel
      sig { returns(String) }
      attr_accessor :user_id

      # Represents a member of a DM channel
      sig do
        params(
          id: String,
          channel_id: String,
          last_viewed_at: T.nilable(String),
          status: WhopSDK::DmFeedMemberStatuses::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # The ID of the DM channel
        channel_id:,
        # Timestamp when the member last viewed the channel (in milliseconds since Unix
        # epoch)
        last_viewed_at:,
        # The status of the membership (requested, accepted, rejected)
        status:,
        # The ID of the user who is a member of the channel
        user_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            channel_id: String,
            last_viewed_at: T.nilable(String),
            status: WhopSDK::DmFeedMemberStatuses::TaggedSymbol,
            user_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
