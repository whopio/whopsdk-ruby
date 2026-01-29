# typed: strong

module WhopSDK
  module Models
    class DmMemberCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::DmMemberCreateResponse,
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

      # The notification preference for this member (all, mentions, none)
      sig do
        returns(
          WhopSDK::Models::DmMemberCreateResponse::NotificationPreference::TaggedSymbol
        )
      end
      attr_accessor :notification_preference

      # The status of the membership (requested, accepted, rejected)
      sig do
        returns(WhopSDK::Models::DmMemberCreateResponse::Status::TaggedSymbol)
      end
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
          notification_preference:
            WhopSDK::Models::DmMemberCreateResponse::NotificationPreference::OrSymbol,
          status: WhopSDK::Models::DmMemberCreateResponse::Status::OrSymbol,
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
        # The notification preference for this member (all, mentions, none)
        notification_preference:,
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
            notification_preference:
              WhopSDK::Models::DmMemberCreateResponse::NotificationPreference::TaggedSymbol,
            status:
              WhopSDK::Models::DmMemberCreateResponse::Status::TaggedSymbol,
            user_id: String
          }
        )
      end
      def to_hash
      end

      # The notification preference for this member (all, mentions, none)
      module NotificationPreference
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::DmMemberCreateResponse::NotificationPreference
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :all,
            WhopSDK::Models::DmMemberCreateResponse::NotificationPreference::TaggedSymbol
          )
        MENTIONS =
          T.let(
            :mentions,
            WhopSDK::Models::DmMemberCreateResponse::NotificationPreference::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            WhopSDK::Models::DmMemberCreateResponse::NotificationPreference::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::DmMemberCreateResponse::NotificationPreference::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The status of the membership (requested, accepted, rejected)
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::DmMemberCreateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REQUESTED =
          T.let(
            :requested,
            WhopSDK::Models::DmMemberCreateResponse::Status::TaggedSymbol
          )
        ACCEPTED =
          T.let(
            :accepted,
            WhopSDK::Models::DmMemberCreateResponse::Status::TaggedSymbol
          )
        HIDDEN =
          T.let(
            :hidden,
            WhopSDK::Models::DmMemberCreateResponse::Status::TaggedSymbol
          )
        CLOSED =
          T.let(
            :closed,
            WhopSDK::Models::DmMemberCreateResponse::Status::TaggedSymbol
          )
        ARCHIVED =
          T.let(
            :archived,
            WhopSDK::Models::DmMemberCreateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::DmMemberCreateResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
