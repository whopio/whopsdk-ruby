# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PaymentMethods#list
    class PaymentMethodListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

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
      #   The unique identifier of the company. Provide either this or member_id, not
      #   both.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute created_after
      #   Only return payment methods created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return payment methods created before this timestamp.
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

      # @!attribute member_id
      #   The unique identifier of the member to list payment methods for.
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!method initialize(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, member_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentMethodListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String, nil] The unique identifier of the company. Provide either this or member_id, not both
      #
      #   @param created_after [Time, nil] Only return payment methods created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return payment methods created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param member_id [String, nil] The unique identifier of the member to list payment methods for.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
