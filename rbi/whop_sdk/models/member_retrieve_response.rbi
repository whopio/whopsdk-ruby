# typed: strong

module WhopSDK
  module Models
    class MemberRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::MemberRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
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

      # The company for the member.
      sig { returns(WhopSDK::Models::MemberRetrieveResponse::Company) }
      attr_reader :company

      sig do
        params(
          company: WhopSDK::Models::MemberRetrieveResponse::Company::OrHash
        ).void
      end
      attr_writer :company

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
      sig { returns(T.nilable(WhopSDK::Models::MemberRetrieveResponse::User)) }
      attr_reader :user

      sig do
        params(
          user: T.nilable(WhopSDK::Models::MemberRetrieveResponse::User::OrHash)
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
          company: WhopSDK::Models::MemberRetrieveResponse::Company::OrHash,
          created_at: Time,
          joined_at: Time,
          most_recent_action:
            T.nilable(WhopSDK::MemberMostRecentActions::OrSymbol),
          most_recent_action_at: T.nilable(Time),
          phone: T.nilable(String),
          status: WhopSDK::MemberStatuses::OrSymbol,
          updated_at: Time,
          usd_total_spent: Float,
          user: T.nilable(WhopSDK::Models::MemberRetrieveResponse::User::OrHash)
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
        # The company for the member.
        company:,
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
            company: WhopSDK::Models::MemberRetrieveResponse::Company,
            created_at: Time,
            joined_at: Time,
            most_recent_action:
              T.nilable(WhopSDK::MemberMostRecentActions::TaggedSymbol),
            most_recent_action_at: T.nilable(Time),
            phone: T.nilable(String),
            status: WhopSDK::MemberStatuses::TaggedSymbol,
            updated_at: Time,
            usd_total_spent: Float,
            user: T.nilable(WhopSDK::Models::MemberRetrieveResponse::User)
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MemberRetrieveResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the company
        sig { returns(String) }
        attr_accessor :id

        # The slug/route of the company on the Whop site.
        sig { returns(String) }
        attr_accessor :route

        # The written name of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company for the member.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the company
          id:,
          # The slug/route of the company on the Whop site.
          route:,
          # The written name of the company.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MemberRetrieveResponse::User,
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
