# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Memberships#list
    class MembershipListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list memberships for
      #
      #   @return [String]
      required :company_id, String

      # @!attribute access_pass_ids
      #   The access pass IDs to filter the memberships by
      #
      #   @return [Array<String>, nil]
      optional :access_pass_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

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
      #   @return [Array<Symbol, Whopsdk::Models::MembershipListParams::CancelOption>, nil]
      optional :cancel_options,
               -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::MembershipListParams::CancelOption] },
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
      #   @return [Symbol, Whopsdk::Models::Direction, nil]
      optional :direction, enum: -> { Whopsdk::Direction }, nil?: true

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
      #   @return [Symbol, Whopsdk::Models::MembershipListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::MembershipListParams::Order }, nil?: true

      # @!attribute plan_ids
      #   The plan IDs to filter the memberships by
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute promo_code_ids
      #   The promo code IDs to filter the memberships by
      #
      #   @return [Array<String>, nil]
      optional :promo_code_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute statuses
      #   The membership status to filter the memberships by
      #
      #   @return [Array<Symbol, Whopsdk::Models::MembershipStatus>, nil]
      optional :statuses, -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::MembershipStatus] }, nil?: true

      # @!method initialize(company_id:, access_pass_ids: nil, after: nil, before: nil, cancel_options: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, promo_code_ids: nil, statuses: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list memberships for
      #
      #   @param access_pass_ids [Array<String>, nil] The access pass IDs to filter the memberships by
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param cancel_options [Array<Symbol, Whopsdk::Models::MembershipListParams::CancelOption>, nil] The cancel options to filter the memberships by
      #
      #   @param created_after [Time, nil] The minimum creation date to filter by
      #
      #   @param created_before [Time, nil] The maximum creation date to filter by
      #
      #   @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, Whopsdk::Models::MembershipListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param plan_ids [Array<String>, nil] The plan IDs to filter the memberships by
      #
      #   @param promo_code_ids [Array<String>, nil] The promo code IDs to filter the memberships by
      #
      #   @param statuses [Array<Symbol, Whopsdk::Models::MembershipStatus>, nil] The membership status to filter the memberships by
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The different reasons a user can choose for why they are canceling their
      # membership.
      module CancelOption
        extend Whopsdk::Internal::Type::Enum

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
        extend Whopsdk::Internal::Type::Enum

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
