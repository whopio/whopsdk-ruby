# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Members#list
    class MemberListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute access_level
      #   Filter by what the member can reach on the account.
      #
      #   @return [Symbol, WhopSDK::Models::MemberListParams::AccessLevel, nil]
      optional :access_level, enum: -> { WhopSDK::MemberListParams::AccessLevel }

      # @!attribute account_id
      #   The account to list members for (`biz_` tag). Defaults to the account the
      #   credential acts as.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   Cursor to paginate forwards from.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Cursor to paginate backwards from.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only members who joined after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only members who joined before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::MemberListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::MemberListParams::Direction }

      # @!attribute first
      #   Number of members to return from the start of the window.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of members to return from the end of the window.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   Sort field.
      #
      #   @return [Symbol, WhopSDK::Models::MemberListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::MemberListParams::Order }

      # @!attribute query
      #   Search members by name or username. An exact email address also matches when the
      #   credential holds the member:email:read scope.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute status
      #   Filter by whether the member is still part of the account.
      #
      #   @return [Symbol, WhopSDK::Models::MemberListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::MemberListParams::Status }

      # @!attribute user_ids
      #   Only return members whose users match these `user_` identifiers.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(access_level: nil, account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, status: nil, user_ids: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MemberListParams} for more details.
      #
      #   @param access_level [Symbol, WhopSDK::Models::MemberListParams::AccessLevel] Filter by what the member can reach on the account.
      #
      #   @param account_id [String] The account to list members for (`biz_` tag). Defaults to the account the creden
      #
      #   @param after [String] Cursor to paginate forwards from.
      #
      #   @param before [String] Cursor to paginate backwards from.
      #
      #   @param created_after [String] Only members who joined after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only members who joined before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::MemberListParams::Direction] Sort direction.
      #
      #   @param first [Integer] Number of members to return from the start of the window.
      #
      #   @param last [Integer] Number of members to return from the end of the window.
      #
      #   @param order [Symbol, WhopSDK::Models::MemberListParams::Order] Sort field.
      #
      #   @param query [String] Search members by name or username. An exact email address also matches when the
      #
      #   @param status [Symbol, WhopSDK::Models::MemberListParams::Status] Filter by whether the member is still part of the account.
      #
      #   @param user_ids [Array<String>] Only return members whose users match these `user_` identifiers.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Filter by what the member can reach on the account.
      module AccessLevel
        extend WhopSDK::Internal::Type::Enum

        NO_ACCESS = :no_access
        ADMIN = :admin
        CUSTOMER = :customer

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort field.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        JOINED_AT = :joined_at
        LAST_ACCESSED_AT = :last_accessed_at
        USD_TOTAL_SPENT = :usd_total_spent

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by whether the member is still part of the account.
      module Status
        extend WhopSDK::Internal::Type::Enum

        JOINED = :joined
        LEFT = :left

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
