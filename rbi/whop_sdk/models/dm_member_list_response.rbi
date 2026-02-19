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

      # The unique identifier of the messaging channel this membership belongs to.
      sig { returns(String) }
      attr_accessor :channel_id

      # The timestamp when this member last viewed the channel, as a Unix timestamp in
      # milliseconds. Null if the member has never viewed the channel.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_viewed_at

      # The current state of this membership: requested, accepted, hidden, closed, or
      # archived.
      sig { returns(WhopSDK::DmFeedMemberStatuses::TaggedSymbol) }
      attr_accessor :status

      # The unique identifier of the user who holds this channel membership.
      sig { returns(String) }
      attr_accessor :user_id

      # A user's membership record in a messaging channel, including notification
      # preferences and read state.
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
        # The unique identifier of the messaging channel this membership belongs to.
        channel_id:,
        # The timestamp when this member last viewed the channel, as a Unix timestamp in
        # milliseconds. Null if the member has never viewed the channel.
        last_viewed_at:,
        # The current state of this membership: requested, accepted, hidden, closed, or
        # archived.
        status:,
        # The unique identifier of the user who holds this channel membership.
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
