# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Members#retrieve
    class MemberRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Member ID, prefixed `mber_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute access_level
      #   What the member can reach on the account: `customer` for paying members, `admin`
      #   for team members, `no_access` once every grant has lapsed.
      #
      #   @return [Symbol, WhopSDK::Models::MemberRetrieveResponse::AccessLevel]
      required :access_level, enum: -> { WhopSDK::Models::MemberRetrieveResponse::AccessLevel }

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
      #   @return [Symbol, WhopSDK::Models::MemberRetrieveResponse::Status]
      required :status, enum: -> { WhopSDK::Models::MemberRetrieveResponse::Status }

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
      #   @return [WhopSDK::Models::MemberRetrieveResponse::User, nil]
      required :user, -> { WhopSDK::Models::MemberRetrieveResponse::User }, nil?: true

      # @!method initialize(id:, access_level:, account_id:, created_at:, joined_at:, last_accessed_at:, phone_number:, status:, token_balance:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MemberRetrieveResponse} for more details.
      #
      #   @param id [String] Member ID, prefixed `mber_`.
      #
      #   @param access_level [Symbol, WhopSDK::Models::MemberRetrieveResponse::AccessLevel] What the member can reach on the account: `customer` for paying members, `admin`
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
      #   @param status [Symbol, WhopSDK::Models::MemberRetrieveResponse::Status] `joined` while the member is part of the account, `left` after they leave.
      #
      #   @param token_balance [Float] The member's current token balance for this account, computed from token transac
      #
      #   @param user [WhopSDK::Models::MemberRetrieveResponse::User, nil] The user behind this member. `null` when the buyer is another business rather th

      # What the member can reach on the account: `customer` for paying members, `admin`
      # for team members, `no_access` once every grant has lapsed.
      #
      # @see WhopSDK::Models::MemberRetrieveResponse#access_level
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
      # @see WhopSDK::Models::MemberRetrieveResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        JOINED = :joined
        LEFT = :left

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::MemberRetrieveResponse#user
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
        #   @return [WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture]
        required :profile_picture, -> { WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture }

        # @!attribute username
        #   Public username.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, profile_picture:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::MemberRetrieveResponse::User} for more details.
        #
        #   The user behind this member. `null` when the buyer is another business rather
        #   than a person.
        #
        #   @param id [String] User ID, prefixed `user_`.
        #
        #   @param name [String, nil] Display name.
        #
        #   @param profile_picture [WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
        #
        #   @param username [String] Public username.

        # @see WhopSDK::Models::MemberRetrieveResponse::User#profile_picture
        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          # @!attribute url
          #   Avatar image URL. Always present — a generated placeholder when the user set no
          #   picture.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture} for more
          #   details.
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
