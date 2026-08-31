# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Bounties#list
    class BountyListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Scope the list to this account (`biz_` tag). Requires read access to the
      #   account; account API keys may pass their own account or a connected account.
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

      # @!attribute business_goal_type
      #   Filter by the poster's declared goal. Bounties created before the goal taxonomy
      #   carry no goal and never match this filter.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListParams::BusinessGoalType, nil]
      optional :business_goal_type, enum: -> { WhopSDK::BountyListParams::BusinessGoalType }

      # @!attribute country
      #   Only bounties workable from this country, as an ISO 3166-1 alpha-2 code.
      #   Bounties with no country targeting are workable worldwide and always match.
      #
      #   @return [String, nil]
      optional :country, String

      # @!attribute created_after
      #   Only bounties created after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only bounties created before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::BountyListParams::Direction }

      # @!attribute experience_id
      #   Only bounties posted to this forum experience, prefixed `exp_`. An unknown
      #   experience, or one outside the caller's scope, matches nothing.
      #
      #   @return [String, nil]
      optional :experience_id, String

      # @!attribute first
      #   Number of bounties to return from the start of the window.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of bounties to return from the end of the window.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   Sort field.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::BountyListParams::Order }

      # @!attribute query
      #   Substring match on the bounty title or ID.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute status
      #   Filter by lifecycle state.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::BountyListParams::Status }

      # @!attribute user_id
      #   List the bounties this user participated in (`user_` tag). Must be the
      #   authenticated user.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, before: nil, business_goal_type: nil, country: nil, created_after: nil, created_before: nil, direction: nil, experience_id: nil, first: nil, last: nil, order: nil, query: nil, status: nil, user_id: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::BountyListParams} for more details.
      #
      #   @param account_id [String] Scope the list to this account (`biz_` tag). Requires read access to the account
      #
      #   @param after [String] Cursor to paginate forwards from.
      #
      #   @param before [String] Cursor to paginate backwards from.
      #
      #   @param business_goal_type [Symbol, WhopSDK::Models::BountyListParams::BusinessGoalType] Filter by the poster's declared goal. Bounties created before the goal taxonomy
      #
      #   @param country [String] Only bounties workable from this country, as an ISO 3166-1 alpha-2 code. Bountie
      #
      #   @param created_after [String] Only bounties created after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only bounties created before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::BountyListParams::Direction] Sort direction.
      #
      #   @param experience_id [String] Only bounties posted to this forum experience, prefixed `exp_`. An unknown exper
      #
      #   @param first [Integer] Number of bounties to return from the start of the window.
      #
      #   @param last [Integer] Number of bounties to return from the end of the window.
      #
      #   @param order [Symbol, WhopSDK::Models::BountyListParams::Order] Sort field.
      #
      #   @param query [String] Substring match on the bounty title or ID.
      #
      #   @param status [Symbol, WhopSDK::Models::BountyListParams::Status] Filter by lifecycle state.
      #
      #   @param user_id [String] List the bounties this user participated in (`user_` tag). Must be the authentic
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Filter by the poster's declared goal. Bounties created before the goal taxonomy
      # carry no goal and never match this filter.
      module BusinessGoalType
        extend WhopSDK::Internal::Type::Enum

        CLIPPING = :clipping
        POST_ENGAGEMENT = :post_engagement
        OWNED_ACCOUNT_GROWTH = :owned_account_growth
        UGC_CONTENT = :ugc_content
        LOCAL_ACTIVATION = :local_activation
        DATA_CAPTURE = :data_capture
        OTHER = :other

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
        GROSS_PAID_OUT_AMOUNT = :gross_paid_out_amount
        GROSS_REWARD_AMOUNT = :gross_reward_amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by lifecycle state.
      module Status
        extend WhopSDK::Internal::Type::Enum

        SCHEDULED = :scheduled
        OPEN = :open
        CLOSED = :closed
        COMPLETED = :completed
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
