# frozen_string_literal: true

module WhopSDK
  module Models
    class MemberCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #   A member represents a user's relationship with a company on Whop, including
      #   their access level, status, and spending history.
      #
      #   @return [WhopSDK::Models::MemberCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::MemberCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"member.created"]
      required :type, const: :"member.created"

      # @!attribute company_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, api_version_date:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"member.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MemberCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::MemberCreatedWebhookEvent::Data] A member represents a user's relationship with a company on Whop, including thei
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"member.created"] The webhook event type

      # @see WhopSDK::Models::MemberCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company member.
        #
        #   @return [String]
        required :id, String

        # @!attribute access_level
        #   The access level of the product member. If its admin, the member is an
        #   authorized user of the company. If its customer, the member has a valid
        #   membership to any product on the company. If its no_access, the member does not
        #   have access to the product.
        #
        #   @return [Symbol, WhopSDK::Models::AccessLevel]
        required :access_level, enum: -> { WhopSDK::AccessLevel }

        # @!attribute company
        #   The company for the member.
        #
        #   @return [WhopSDK::Models::MemberCreatedWebhookEvent::Data::Company]
        required :company, -> { WhopSDK::MemberCreatedWebhookEvent::Data::Company }

        # @!attribute company_token_balance
        #   The member's token balance for this company. Computed live from the ledger, not
        #   from a cache.
        #
        #   @return [Float]
        required :company_token_balance, Float

        # @!attribute created_at
        #   The datetime the company member was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute joined_at
        #   When the member joined the company
        #
        #   @return [Time]
        required :joined_at, Time

        # @!attribute most_recent_action
        #   The different most recent actions a member can have.
        #
        #   @return [Symbol, WhopSDK::Models::MemberMostRecentActions, nil]
        required :most_recent_action, enum: -> { WhopSDK::MemberMostRecentActions }, nil?: true

        # @!attribute most_recent_action_at
        #   The time for the most recent action, if applicable.
        #
        #   @return [Time, nil]
        required :most_recent_action_at, Time, nil?: true

        # @!attribute phone
        #   The phone number for the member, if available.
        #
        #   @return [String, nil]
        required :phone, String, nil?: true

        # @!attribute status
        #   The status of the member
        #
        #   @return [Symbol, WhopSDK::Models::MemberStatuses]
        required :status, enum: -> { WhopSDK::MemberStatuses }

        # @!attribute updated_at
        #   The datetime the company member was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute usd_total_spent
        #   How much money this customer has spent on the company's products and plans
        #
        #   @return [Float]
        required :usd_total_spent, Float

        # @!attribute user
        #   The user for this member, if any.
        #
        #   @return [WhopSDK::Models::MemberCreatedWebhookEvent::Data::User, nil]
        required :user, -> { WhopSDK::MemberCreatedWebhookEvent::Data::User }, nil?: true

        # @!method initialize(id:, access_level:, company:, company_token_balance:, created_at:, joined_at:, most_recent_action:, most_recent_action_at:, phone:, status:, updated_at:, usd_total_spent:, user:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::MemberCreatedWebhookEvent::Data} for more details.
        #
        #   A member represents a user's relationship with a company on Whop, including
        #   their access level, status, and spending history.
        #
        #   @param id [String] The unique identifier for the company member.
        #
        #   @param access_level [Symbol, WhopSDK::Models::AccessLevel] The access level of the product member. If its admin, the member is an authorize
        #
        #   @param company [WhopSDK::Models::MemberCreatedWebhookEvent::Data::Company] The company for the member.
        #
        #   @param company_token_balance [Float] The member's token balance for this company. Computed live from the ledger, not
        #
        #   @param created_at [Time] The datetime the company member was created.
        #
        #   @param joined_at [Time] When the member joined the company
        #
        #   @param most_recent_action [Symbol, WhopSDK::Models::MemberMostRecentActions, nil] The different most recent actions a member can have.
        #
        #   @param most_recent_action_at [Time, nil] The time for the most recent action, if applicable.
        #
        #   @param phone [String, nil] The phone number for the member, if available.
        #
        #   @param status [Symbol, WhopSDK::Models::MemberStatuses] The status of the member
        #
        #   @param updated_at [Time] The datetime the company member was last updated.
        #
        #   @param usd_total_spent [Float] How much money this customer has spent on the company's products and plans
        #
        #   @param user [WhopSDK::Models::MemberCreatedWebhookEvent::Data::User, nil] The user for this member, if any.

        # @see WhopSDK::Models::MemberCreatedWebhookEvent::Data#company
        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute route
          #   The slug/route of the company on the Whop site.
          #
          #   @return [String]
          required :route, String

          # @!attribute title
          #   The written name of the company.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, route:, title:)
          #   The company for the member.
          #
          #   @param id [String] The unique identifier for the company.
          #
          #   @param route [String] The slug/route of the company on the Whop site.
          #
          #   @param title [String] The written name of the company.
        end

        # @see WhopSDK::Models::MemberCreatedWebhookEvent::Data#user
        class User < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company member user.
          #
          #   @return [String]
          required :id, String

          # @!attribute email
          #   The digital mailing address of the user.
          #
          #   @return [String, nil]
          required :email, String, nil?: true

          # @!attribute name
          #   The user's full name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute username
          #   The whop username.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, email:, name:, username:)
          #   The user for this member, if any.
          #
          #   @param id [String] The unique identifier for the company member user.
          #
          #   @param email [String, nil] The digital mailing address of the user.
          #
          #   @param name [String, nil] The user's full name.
          #
          #   @param username [String] The whop username.
        end
      end
    end
  end
end
