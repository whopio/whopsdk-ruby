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

      # The bot ID if this is a support chat
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # The custom name of the DM channel, if any
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_name

      # The customer user if this is a support chat
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

      # When the last message was sent
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_message_at

      # When the support ticket was resolved (null if unresolved)
      sig { returns(T.nilable(Time)) }
      attr_accessor :resolved_at

      # Represents a DM channel
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
        # The bot ID if this is a support chat
        company_id:,
        # The custom name of the DM channel, if any
        custom_name:,
        # The customer user if this is a support chat
        customer_user:,
        # When the last message was sent
        last_message_at:,
        # When the support ticket was resolved (null if unresolved)
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

        # The customer user if this is a support chat
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
