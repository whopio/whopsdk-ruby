# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Members#list
    class MemberListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list members for
      #
      #   @return [String]
      required :company_id, String

      # @!attribute access_level
      #   The access level a given user (or company) has to an access pass or company.
      #
      #   @return [Symbol, WhopSDK::Models::AccessLevel, nil]
      optional :access_level, enum: -> { WhopSDK::AccessLevel }, nil?: true

      # @!attribute access_pass_ids
      #   The access pass IDs to filter the members by
      #
      #   @return [Array<String>, nil]
      optional :access_pass_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute created_after
      #   The minimum creation date to filter by
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   The maximum creation date to filter by
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute most_recent_actions
      #   The most recent actions to filter the members by
      #
      #   @return [Array<Symbol, WhopSDK::Models::MemberMostRecentActions>, nil]
      optional :most_recent_actions,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::MemberMostRecentActions] },
               nil?: true

      # @!attribute order
      #   Which columns can be used to sort.
      #
      #   @return [Symbol, WhopSDK::Models::MemberListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::MemberListParams::Order }, nil?: true

      # @!attribute plan_ids
      #   The plan IDs to filter the members by
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute promo_code_ids
      #   The promo code IDs to filter the members by
      #
      #   @return [Array<String>, nil]
      optional :promo_code_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute query
      #   The name, username, or email to filter the members by. The email filter will
      #   only apply if the current actor has the `member:email:read` permission.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute statuses
      #   The statuses to filter the members by
      #
      #   @return [Array<Symbol, WhopSDK::Models::MemberStatuses>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::MemberStatuses] }, nil?: true

      # @!attribute user_ids
      #   The user IDs to filter the members by
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(company_id:, access_level: nil, access_pass_ids: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, most_recent_actions: nil, order: nil, plan_ids: nil, promo_code_ids: nil, query: nil, statuses: nil, user_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MemberListParams} for more details.
      #
      #   @param company_id [String] The ID of the company to list members for
      #
      #   @param access_level [Symbol, WhopSDK::Models::AccessLevel, nil] The access level a given user (or company) has to an access pass or company.
      #
      #   @param access_pass_ids [Array<String>, nil] The access pass IDs to filter the members by
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time, nil] The minimum creation date to filter by
      #
      #   @param created_before [Time, nil] The maximum creation date to filter by
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param most_recent_actions [Array<Symbol, WhopSDK::Models::MemberMostRecentActions>, nil] The most recent actions to filter the members by
      #
      #   @param order [Symbol, WhopSDK::Models::MemberListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param plan_ids [Array<String>, nil] The plan IDs to filter the members by
      #
      #   @param promo_code_ids [Array<String>, nil] The promo code IDs to filter the members by
      #
      #   @param query [String, nil] The name, username, or email to filter the members by. The email filter will onl
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::MemberStatuses>, nil] The statuses to filter the members by
      #
      #   @param user_ids [Array<String>, nil] The user IDs to filter the members by
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Which columns can be used to sort.
      module Order
        extend WhopSDK::Internal::Type::Enum

        ID = :id
        USD_TOTAL_SPENT = :usd_total_spent
        CREATED_AT = :created_at
        JOINED_AT = :joined_at
        MOST_RECENT_ACTION = :most_recent_action

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
