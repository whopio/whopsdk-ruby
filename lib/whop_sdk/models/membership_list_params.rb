# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#list
    class MembershipListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list memberships for
      #
      #   @return [String]
      required :company_id, String

      # @!attribute access_pass_ids
      #   The access pass IDs to filter the memberships by
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

      # @!attribute cancel_options
      #   The cancel options to filter the memberships by
      #
      #   @return [Array<Symbol, WhopSDK::Models::MembershipListParams::CancelOption>, nil]
      optional :cancel_options,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::MembershipListParams::CancelOption] },
               nil?: true

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

      # @!attribute order
      #   Which columns can be used to sort.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::MembershipListParams::Order }, nil?: true

      # @!attribute plan_ids
      #   The plan IDs to filter the memberships by
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute promo_code_ids
      #   The promo code IDs to filter the memberships by
      #
      #   @return [Array<String>, nil]
      optional :promo_code_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute statuses
      #   The membership status to filter the memberships by
      #
      #   @return [Array<Symbol, WhopSDK::Models::MembershipStatus>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::MembershipStatus] }, nil?: true

      # @!attribute user_ids
      #   Only return memberships from these whop user ids
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(company_id:, access_pass_ids: nil, after: nil, before: nil, cancel_options: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, promo_code_ids: nil, statuses: nil, user_ids: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list memberships for
      #
      #   @param access_pass_ids [Array<String>, nil] The access pass IDs to filter the memberships by
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param cancel_options [Array<Symbol, WhopSDK::Models::MembershipListParams::CancelOption>, nil] The cancel options to filter the memberships by
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
      #   @param order [Symbol, WhopSDK::Models::MembershipListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param plan_ids [Array<String>, nil] The plan IDs to filter the memberships by
      #
      #   @param promo_code_ids [Array<String>, nil] The promo code IDs to filter the memberships by
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::MembershipStatus>, nil] The membership status to filter the memberships by
      #
      #   @param user_ids [Array<String>, nil] Only return memberships from these whop user ids
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The different reasons a user can choose for why they are canceling their
      # membership.
      module CancelOption
        extend WhopSDK::Internal::Type::Enum

        TOO_EXPENSIVE = :too_expensive
        SWITCHING = :switching
        MISSING_FEATURES = :missing_features
        TECHNICAL_ISSUES = :technical_issues
        BAD_EXPERIENCE = :bad_experience
        OTHER = :other
        TESTING = :testing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Which columns can be used to sort.
      module Order
        extend WhopSDK::Internal::Type::Enum

        ID = :id
        CREATED_AT = :created_at
        STATUS = :status
        CANCELED_AT = :canceled_at
        DATE_JOINED = :date_joined
        TOTAL_SPEND = :total_spend

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
