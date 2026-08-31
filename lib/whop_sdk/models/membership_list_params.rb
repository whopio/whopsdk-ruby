# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#list
    class MembershipListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Narrow to one account (`biz_` tag). With read access to the account this lists
      #   all of its memberships; without, only the caller's own memberships in it.
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
      #   Only memberships created after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only memberships created before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::MembershipListParams::Direction }

      # @!attribute first
      #   Number of memberships to return from the start of the window.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of memberships to return from the end of the window.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   Sort field.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::MembershipListParams::Order }

      # @!attribute plan_id
      #   Filter to memberships of this plan (`plan_` tag). Repeat as plan_ids[] for
      #   several.
      #
      #   @return [String, nil]
      optional :plan_id, String

      # @!attribute product_id
      #   Filter to memberships of this product (`prod_` tag). Repeat as product_ids[] for
      #   several.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute status
      #   Filter by billing state. `canceling` matches active memberships set to cancel at
      #   period end; `paused` matches memberships with payment collection paused.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::MembershipListParams::Status }

      # @!attribute user_id
      #   Narrow to one user's memberships (`user_` tag, or `me` for the caller). A user
      #   outside the caller's visible set returns an empty list.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_id: nil, product_id: nil, status: nil, user_id: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipListParams} for more details.
      #
      #   @param account_id [String] Narrow to one account (`biz_` tag). With read access to the account this lists a
      #
      #   @param after [String] Cursor to paginate forwards from.
      #
      #   @param before [String] Cursor to paginate backwards from.
      #
      #   @param created_after [String] Only memberships created after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only memberships created before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::MembershipListParams::Direction] Sort direction.
      #
      #   @param first [Integer] Number of memberships to return from the start of the window.
      #
      #   @param last [Integer] Number of memberships to return from the end of the window.
      #
      #   @param order [Symbol, WhopSDK::Models::MembershipListParams::Order] Sort field.
      #
      #   @param plan_id [String] Filter to memberships of this plan (`plan_` tag). Repeat as plan_ids[] for sever
      #
      #   @param product_id [String] Filter to memberships of this product (`prod_` tag). Repeat as product_ids[] for
      #
      #   @param status [Symbol, WhopSDK::Models::MembershipListParams::Status] Filter by billing state. `canceling` matches active memberships set to cancel at
      #
      #   @param user_id [String] Narrow to one user's memberships (`user_` tag, or `me` for the caller). A user o
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by billing state. `canceling` matches active memberships set to cancel at
      # period end; `paused` matches memberships with payment collection paused.
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        TRIALING = :trialing
        PAST_DUE = :past_due
        COMPLETED = :completed
        CANCELED = :canceled
        EXPIRED = :expired
        CANCELING = :canceling
        PAUSED = :paused

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
