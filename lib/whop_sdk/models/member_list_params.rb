# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Members#list
    class MemberListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute access_level
      #   The access level a given user (or company) has to a product or company.
      #
      #   @return [Symbol, WhopSDK::Models::AccessLevel, nil]
      optional :access_level, enum: -> { WhopSDK::AccessLevel }, nil?: true

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

      # @!attribute company_id
      #   The unique identifier of the company to list members for.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute created_after
      #   Only return members created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return members created before this timestamp.
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
      #   Filter members by their most recent activity type.
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
      #   Filter members to only those subscribed to these specific plans.
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute product_ids
      #   Filter members to only those belonging to these specific products.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute promo_code_ids
      #   Filter members to only those who used these specific promo codes.
      #
      #   @return [Array<String>, nil]
      optional :promo_code_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute query
      #   Search members by name, username, or email. Email filtering requires the
      #   member:email:read permission.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute statuses
      #   Filter members by their current subscription status.
      #
      #   @return [Array<Symbol, WhopSDK::Models::MemberStatuses>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::MemberStatuses] }, nil?: true

      # @!attribute user_ids
      #   Filter members to only those matching these specific user identifiers.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(access_level: nil, after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, most_recent_actions: nil, order: nil, plan_ids: nil, product_ids: nil, promo_code_ids: nil, query: nil, statuses: nil, user_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MemberListParams} for more details.
      #
      #   @param access_level [Symbol, WhopSDK::Models::AccessLevel, nil] The access level a given user (or company) has to a product or company.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String, nil] The unique identifier of the company to list members for.
      #
      #   @param created_after [Time, nil] Only return members created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return members created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param most_recent_actions [Array<Symbol, WhopSDK::Models::MemberMostRecentActions>, nil] Filter members by their most recent activity type.
      #
      #   @param order [Symbol, WhopSDK::Models::MemberListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param plan_ids [Array<String>, nil] Filter members to only those subscribed to these specific plans.
      #
      #   @param product_ids [Array<String>, nil] Filter members to only those belonging to these specific products.
      #
      #   @param promo_code_ids [Array<String>, nil] Filter members to only those who used these specific promo codes.
      #
      #   @param query [String, nil] Search members by name, username, or email. Email filtering requires the member:
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::MemberStatuses>, nil] Filter members by their current subscription status.
      #
      #   @param user_ids [Array<String>, nil] Filter members to only those matching these specific user identifiers.
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
