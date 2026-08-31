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

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"member.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MemberCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::MemberCreatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"member.created"] The webhook event type

      # @see WhopSDK::Models::MemberCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Member ID, prefixed `mber_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute access_level
        #   What the member can reach on the account: `customer` for paying members, `admin`
        #   for team members, `no_access` once every grant has lapsed.
        #
        #   @return [Symbol, WhopSDK::Models::MemberCreatedWebhookEvent::Data::AccessLevel]
        required :access_level, enum: -> { WhopSDK::MemberCreatedWebhookEvent::Data::AccessLevel }

        # @!attribute account_id
        #   The account this member belongs to, prefixed `biz_`.
        #
        #   @return [String]
        required :account_id, String

        # @!attribute created_at
        #   When the member record was created, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute joined_at
        #   When the member first joined the account, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :joined_at, String

        # @!attribute last_accessed_at
        #   When the member last opened the account's content, as an ISO 8601 timestamp.
        #   `null` if they never have.
        #
        #   @return [String, nil]
        required :last_accessed_at, String, nil?: true

        # @!attribute phone_number
        #   The member's phone number, or `null`. Their account number when they have shared
        #   one with this seller; otherwise the most recent number collected (or verified)
        #   at checkout.
        #
        #   @return [String, nil]
        required :phone_number, String, nil?: true

        # @!attribute status
        #   `joined` while the member is part of the account, `left` after they leave.
        #
        #   @return [Symbol, WhopSDK::Models::MemberCreatedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::MemberCreatedWebhookEvent::Data::Status }

        # @!attribute token_balance
        #   The member's current token balance for this account, computed from token
        #   transactions.
        #
        #   @return [Float]
        required :token_balance, Float

        # @!attribute user
        #   The user behind this member. `null` when the buyer is another business rather
        #   than a person.
        #
        #   @return [WhopSDK::Models::MemberCreatedWebhookEvent::Data::User, nil]
        required :user, -> { WhopSDK::MemberCreatedWebhookEvent::Data::User }, nil?: true

        # @!method initialize(id:, access_level:, account_id:, created_at:, joined_at:, last_accessed_at:, phone_number:, status:, token_balance:, user:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::MemberCreatedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Member ID, prefixed `mber_`.
        #
        #   @param access_level [Symbol, WhopSDK::Models::MemberCreatedWebhookEvent::Data::AccessLevel] What the member can reach on the account: `customer` for paying members, `admin`
        #
        #   @param account_id [String] The account this member belongs to, prefixed `biz_`.
        #
        #   @param created_at [String] When the member record was created, as an ISO 8601 timestamp.
        #
        #   @param joined_at [String] When the member first joined the account, as an ISO 8601 timestamp.
        #
        #   @param last_accessed_at [String, nil] When the member last opened the account's content, as an ISO 8601 timestamp. `nu
        #
        #   @param phone_number [String, nil] The member's phone number, or `null`. Their account number when they have shared
        #
        #   @param status [Symbol, WhopSDK::Models::MemberCreatedWebhookEvent::Data::Status] `joined` while the member is part of the account, `left` after they leave.
        #
        #   @param token_balance [Float] The member's current token balance for this account, computed from token transac
        #
        #   @param user [WhopSDK::Models::MemberCreatedWebhookEvent::Data::User, nil] The user behind this member. `null` when the buyer is another business rather th

        # What the member can reach on the account: `customer` for paying members, `admin`
        # for team members, `no_access` once every grant has lapsed.
        #
        # @see WhopSDK::Models::MemberCreatedWebhookEvent::Data#access_level
        module AccessLevel
          extend WhopSDK::Internal::Type::Enum

          NO_ACCESS = :no_access
          ADMIN = :admin
          CUSTOMER = :customer

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # `joined` while the member is part of the account, `left` after they leave.
        #
        # @see WhopSDK::Models::MemberCreatedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          JOINED = :joined
          LEFT = :left

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::MemberCreatedWebhookEvent::Data#user
        class User < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   User ID, prefixed `user_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Display name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute profile_picture
          #   Avatar wrapper; its `url` is always present, using a generated placeholder when
          #   the user set no picture.
          #
          #   @return [WhopSDK::Models::MemberCreatedWebhookEvent::Data::User::ProfilePicture]
          required :profile_picture, -> { WhopSDK::MemberCreatedWebhookEvent::Data::User::ProfilePicture }

          # @!attribute username
          #   Public username.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, profile_picture:, username:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::MemberCreatedWebhookEvent::Data::User} for more details.
          #
          #   The user behind this member. `null` when the buyer is another business rather
          #   than a person.
          #
          #   @param id [String] User ID, prefixed `user_`.
          #
          #   @param name [String, nil] Display name.
          #
          #   @param profile_picture [WhopSDK::Models::MemberCreatedWebhookEvent::Data::User::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
          #
          #   @param username [String] Public username.

          # @see WhopSDK::Models::MemberCreatedWebhookEvent::Data::User#profile_picture
          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #   Avatar image URL. Always present — a generated placeholder when the user set no
            #   picture.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(url:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::MemberCreatedWebhookEvent::Data::User::ProfilePicture} for
            #   more details.
            #
            #   Avatar wrapper; its `url` is always present, using a generated placeholder when
            #   the user set no picture.
            #
            #   @param url [String] Avatar image URL. Always present — a generated placeholder when the user set no
          end
        end
      end
    end
  end
end
