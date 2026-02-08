# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Members#list
    class MemberListResponse < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute company_token_balance
      #   The member's token balance for this company
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
      #   @return [WhopSDK::Models::MemberListResponse::User, nil]
      required :user, -> { WhopSDK::Models::MemberListResponse::User }, nil?: true

      # @!method initialize(id:, access_level:, company_token_balance:, created_at:, joined_at:, most_recent_action:, most_recent_action_at:, phone:, status:, updated_at:, usd_total_spent:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MemberListResponse} for more details.
      #
      #   An object representing a connection between a creator and a user/company_buyer.
      #   This type should only be made visible to the user/company_buyer who is a part of
      #   the connection.
      #
      #   @param id [String] The unique identifier for the company member.
      #
      #   @param access_level [Symbol, WhopSDK::Models::AccessLevel] The access level of the product member. If its admin, the member is an authorize
      #
      #   @param company_token_balance [Float] The member's token balance for this company
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
      #   @param user [WhopSDK::Models::MemberListResponse::User, nil] The user for this member, if any.

      # @see WhopSDK::Models::MemberListResponse#user
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
