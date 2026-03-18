# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Affiliates#list
    class AffiliateListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list affiliates for.
      #
      #   @return [String]
      required :company_id, String

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
      #   @return [Symbol, WhopSDK::Models::AffiliateListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::AffiliateListParams::Order }, nil?: true

      # @!attribute query
      #   Search affiliates by username.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute status
      #   Statuses for resources
      #
      #   @return [Symbol, WhopSDK::Models::Status, nil]
      optional :status, enum: -> { WhopSDK::Status }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, status: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list affiliates for.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::AffiliateListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param query [String, nil] Search affiliates by username.
      #
      #   @param status [Symbol, WhopSDK::Models::Status, nil] Statuses for resources
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Which columns can be used to sort.
      module Order
        extend WhopSDK::Internal::Type::Enum

        ID = :id
        CREATED_AT = :created_at
        CACHED_TOTAL_REFERRALS = :cached_total_referrals
        CACHED_TOTAL_REWARDS = :cached_total_rewards

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
