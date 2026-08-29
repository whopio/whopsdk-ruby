# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Refunds#list
    class RefundListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute company_id
      #   Filter refunds to those belonging to this company. Mutually exclusive with
      #   payment_id and user_id: provide exactly one.
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute created_after
      #   Only return refunds created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return refunds created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute direction
      #   The sort direction for ordering results, either ascending or descending.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute payment_id
      #   Filter refunds to those associated with this specific payment. Mutually
      #   exclusive with company_id and user_id: provide exactly one.
      #
      #   @return [String, nil]
      optional :payment_id, String

      # @!attribute user_id
      #   Filter refunds to those associated with this specific user. Mutually exclusive
      #   with payment_id and company_id: provide exactly one. Requires a credential
      #   belonging to that user; any other credential receives 'You are not authorized'.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, payment_id: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::RefundListParams} for more details.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String] Filter refunds to those belonging to this company. Mutually exclusive with payme
      #
      #   @param created_after [Time] Only return refunds created after this timestamp.
      #
      #   @param created_before [Time] Only return refunds created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for ordering results, either ascending or descending.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param payment_id [String] Filter refunds to those associated with this specific payment. Mutually exclusiv
      #
      #   @param user_id [String] Filter refunds to those associated with this specific user. Mutually exclusive w
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
