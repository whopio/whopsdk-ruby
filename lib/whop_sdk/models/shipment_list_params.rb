# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Shipments#list
    class ShipmentListParams < WhopSDK::Internal::Type::BaseModel
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
      #   Filter shipments to only those belonging to this company.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

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

      # @!attribute payment_id
      #   Filter shipments to only those associated with this specific payment.
      #
      #   @return [String, nil]
      optional :payment_id, String, nil?: true

      # @!attribute user_id
      #   Filter shipments to only those for this specific user.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(after: nil, before: nil, company_id: nil, first: nil, last: nil, payment_id: nil, user_id: nil, request_options: {})
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String, nil] Filter shipments to only those belonging to this company.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param payment_id [String, nil] Filter shipments to only those associated with this specific payment.
      #
      #   @param user_id [String, nil] Filter shipments to only those for this specific user.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
