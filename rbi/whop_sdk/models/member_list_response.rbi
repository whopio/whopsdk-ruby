# typed: strong

module WhopSDK
  module Models
    class MemberListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::MemberListResponse, WhopSDK::Internal::AnyHash)
        end

      # The ID of the member
      sig { returns(String) }
      attr_accessor :id

      # The access level of the product member. If its admin, the member is an
      # authorized user of the company. If its customer, the member has a valid
      # membership to any product on the company. If its no_access, the member does not
      # have access to the product.
      sig { returns(WhopSDK::AccessLevel::TaggedSymbol) }
      attr_accessor :access_level

      # The member's token balance for this company
      sig { returns(Float) }
      attr_accessor :company_token_balance

      # When the member was created
      sig { returns(Time) }
      attr_accessor :created_at

      # When the member joined the company
      sig { returns(Time) }
      attr_accessor :joined_at

      # The different most recent actions a member can have.
      sig { returns(T.nilable(WhopSDK::MemberMostRecentActions::TaggedSymbol)) }
      attr_accessor :most_recent_action

      # The time for the most recent action, if applicable.
      sig { returns(T.nilable(Time)) }
      attr_accessor :most_recent_action_at

      # The phone number for the member, if available.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # The status of the member
      sig { returns(WhopSDK::MemberStatuses::TaggedSymbol) }
      attr_accessor :status

      # The timestamp of when this member was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # How much money this customer has spent on the company's products and plans
      sig { returns(Float) }
      attr_accessor :usd_total_spent

      # The user for this member, if any.
      sig { returns(T.nilable(WhopSDK::Models::MemberListResponse::User)) }
      attr_reader :user

      sig do
        params(
          user: T.nilable(WhopSDK::Models::MemberListResponse::User::OrHash)
        ).void
      end
      attr_writer :user

      # An object representing a connection between a creator and a user/company_buyer.
      # This type should only be made visible to the user/company_buyer who is a part of
      # the connection.
      sig do
        params(
          id: String,
          access_level: WhopSDK::AccessLevel::OrSymbol,
          company_token_balance: Float,
          created_at: Time,
          joined_at: Time,
          most_recent_action:
            T.nilable(WhopSDK::MemberMostRecentActions::OrSymbol),
          most_recent_action_at: T.nilable(Time),
          phone: T.nilable(String),
          status: WhopSDK::MemberStatuses::OrSymbol,
          updated_at: Time,
          usd_total_spent: Float,
          user: T.nilable(WhopSDK::Models::MemberListResponse::User::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the member
        id:,
        # The access level of the product member. If its admin, the member is an
        # authorized user of the company. If its customer, the member has a valid
        # membership to any product on the company. If its no_access, the member does not
        # have access to the product.
        access_level:,
        # The member's token balance for this company
        company_token_balance:,
        # When the member was created
        created_at:,
        # When the member joined the company
        joined_at:,
        # The different most recent actions a member can have.
        most_recent_action:,
        # The time for the most recent action, if applicable.
        most_recent_action_at:,
        # The phone number for the member, if available.
        phone:,
        # The status of the member
        status:,
        # The timestamp of when this member was last updated
        updated_at:,
        # How much money this customer has spent on the company's products and plans
        usd_total_spent:,
        # The user for this member, if any.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            access_level: WhopSDK::AccessLevel::TaggedSymbol,
            company_token_balance: Float,
            created_at: Time,
            joined_at: Time,
            most_recent_action:
              T.nilable(WhopSDK::MemberMostRecentActions::TaggedSymbol),
            most_recent_action_at: T.nilable(Time),
            phone: T.nilable(String),
            status: WhopSDK::MemberStatuses::TaggedSymbol,
            updated_at: Time,
            usd_total_spent: Float,
            user: T.nilable(WhopSDK::Models::MemberListResponse::User)
          }
        )
      end
      def to_hash
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MemberListResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the user account.
        sig { returns(String) }
        attr_accessor :id

        # The digital mailing address of the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The user's full name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The whop username.
        sig { returns(String) }
        attr_accessor :username

        # The user for this member, if any.
        sig do
          params(
            id: String,
            email: T.nilable(String),
            name: T.nilable(String),
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the user account.
          id:,
          # The digital mailing address of the user.
          email:,
          # The user's full name.
          name:,
          # The whop username.
          username:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              username: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
