# typed: strong

module WhopSDK
  module Models
    class SupportChannelListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::SupportChannelListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The unique identifier of the company associated with this channel. Null if this
      # is not a support or company-scoped conversation.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # A custom display name assigned to this channel by the user. Null if no custom
      # name has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_name

      # The customer who initiated this support conversation. Null if this is not a
      # support chat.
      sig do
        returns(
          T.nilable(WhopSDK::Models::SupportChannelListResponse::CustomerUser)
        )
      end
      attr_reader :customer_user

      sig do
        params(
          customer_user:
            T.nilable(
              WhopSDK::Models::SupportChannelListResponse::CustomerUser::OrHash
            )
        ).void
      end
      attr_writer :customer_user

      # The timestamp when the most recent message was sent in this channel. Null if no
      # messages have been sent.
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_message_at

      # The timestamp when the linked support ticket was marked as resolved. Null if
      # unresolved or not a support chat.
      sig { returns(T.nilable(Time)) }
      attr_accessor :resolved_at

      # A messaging channel that can be a one-on-one DM, group chat, company support
      # conversation, or platform-level direct message.
      sig do
        params(
          id: String,
          company_id: T.nilable(String),
          custom_name: T.nilable(String),
          customer_user:
            T.nilable(
              WhopSDK::Models::SupportChannelListResponse::CustomerUser::OrHash
            ),
          last_message_at: T.nilable(Time),
          resolved_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # The unique identifier of the company associated with this channel. Null if this
        # is not a support or company-scoped conversation.
        company_id:,
        # A custom display name assigned to this channel by the user. Null if no custom
        # name has been set.
        custom_name:,
        # The customer who initiated this support conversation. Null if this is not a
        # support chat.
        customer_user:,
        # The timestamp when the most recent message was sent in this channel. Null if no
        # messages have been sent.
        last_message_at:,
        # The timestamp when the linked support ticket was marked as resolved. Null if
        # unresolved or not a support chat.
        resolved_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            company_id: T.nilable(String),
            custom_name: T.nilable(String),
            customer_user:
              T.nilable(
                WhopSDK::Models::SupportChannelListResponse::CustomerUser
              ),
            last_message_at: T.nilable(Time),
            resolved_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class CustomerUser < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::SupportChannelListResponse::CustomerUser,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The customer who initiated this support conversation. Null if this is not a
        # support chat.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
