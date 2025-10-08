# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Shipments#list
    class ShipmentListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company
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
      #   The ID of the payment
      #
      #   @return [String, nil]
      optional :payment_id, String, nil?: true

      # @!attribute user_id
      #   The ID of the user
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, first: nil, last: nil, payment_id: nil, user_id: nil, request_options: {})
      #   @param company_id [String] The ID of the company
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param payment_id [String, nil] The ID of the payment
      #
      #   @param user_id [String, nil] The ID of the user
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
