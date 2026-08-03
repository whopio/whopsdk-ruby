# typed: strong

module WhopSDK
  module Models
    class MemberCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::MemberCreatedWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      # A member represents a user's relationship with a company on Whop, including
      # their access level, status, and spending history.
      sig { returns(WhopSDK::MemberCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::MemberCreatedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::MemberCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        # A member represents a user's relationship with a company on Whop, including
        # their access level, status, and spending history.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"member.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::MemberCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            company_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::MemberCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company member.
        sig { returns(String) }
        attr_accessor :id

        # The access level of the product member. If its admin, the member is an
        # authorized user of the company. If its customer, the member has a valid
        # membership to any product on the company. If its no_access, the member does not
        # have access to the product.
        sig { returns(WhopSDK::AccessLevel::TaggedSymbol) }
        attr_accessor :access_level

        # The company for the member.
        sig { returns(WhopSDK::MemberCreatedWebhookEvent::Data::Company) }
        attr_reader :company

        sig do
          params(
            company: WhopSDK::MemberCreatedWebhookEvent::Data::Company::OrHash
          ).void
        end
        attr_writer :company

        # The member's token balance for this company. Computed live from the ledger, not
        # from a cache.
        sig { returns(Float) }
        attr_accessor :company_token_balance

        # The datetime the company member was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # When the member joined the company
        sig { returns(Time) }
        attr_accessor :joined_at

        # The different most recent actions a member can have.
        sig do
          returns(T.nilable(WhopSDK::MemberMostRecentActions::TaggedSymbol))
        end
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

        # The datetime the company member was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # How much money this customer has spent on the company's products and plans
        sig { returns(Float) }
        attr_accessor :usd_total_spent

        # The user for this member, if any.
        sig do
          returns(T.nilable(WhopSDK::MemberCreatedWebhookEvent::Data::User))
        end
        attr_reader :user

        sig do
          params(
            user:
              T.nilable(WhopSDK::MemberCreatedWebhookEvent::Data::User::OrHash)
          ).void
        end
        attr_writer :user

        # A member represents a user's relationship with a company on Whop, including
        # their access level, status, and spending history.
        sig do
          params(
            id: String,
            access_level: WhopSDK::AccessLevel::OrSymbol,
            company: WhopSDK::MemberCreatedWebhookEvent::Data::Company::OrHash,
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
            user:
              T.nilable(WhopSDK::MemberCreatedWebhookEvent::Data::User::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the company member.
          id:,
          # The access level of the product member. If its admin, the member is an
          # authorized user of the company. If its customer, the member has a valid
          # membership to any product on the company. If its no_access, the member does not
          # have access to the product.
          access_level:,
          # The company for the member.
          company:,
          # The member's token balance for this company. Computed live from the ledger, not
          # from a cache.
          company_token_balance:,
          # The datetime the company member was created.
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
          # The datetime the company member was last updated.
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
              company: WhopSDK::MemberCreatedWebhookEvent::Data::Company,
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
              user: T.nilable(WhopSDK::MemberCreatedWebhookEvent::Data::User)
            }
          )
        end
        def to_hash
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::MemberCreatedWebhookEvent::Data::Company,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the company.
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
            # The unique identifier for the company.
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
                WhopSDK::MemberCreatedWebhookEvent::Data::User,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the company member user.
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
            # The unique identifier for the company member user.
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
end
