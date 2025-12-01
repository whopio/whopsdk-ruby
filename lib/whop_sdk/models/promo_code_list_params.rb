# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PromoCodes#list
    class PromoCodeListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list promo codes for
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

      # @!attribute plan_ids
      #   Filter promo codes by plan ID(s)
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute product_ids
      #   Filter promo codes by product ID(s)
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute status
      #   Statuses for promo codes
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeStatus, nil]
      optional :status, enum: -> { WhopSDK::PromoCodeStatus }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, plan_ids: nil, product_ids: nil, status: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list promo codes for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time, nil] The minimum creation date to filter by
      #
      #   @param created_before [Time, nil] The maximum creation date to filter by
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param plan_ids [Array<String>, nil] Filter promo codes by plan ID(s)
      #
      #   @param product_ids [Array<String>, nil] Filter promo codes by product ID(s)
      #
      #   @param status [Symbol, WhopSDK::Models::PromoCodeStatus, nil] Statuses for promo codes
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
