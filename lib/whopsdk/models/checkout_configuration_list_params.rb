# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CheckoutConfigurations#list
    class CheckoutConfigurationListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list checkout configurations for
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

      # @!attribute plan_id
      #   The ID of the plan to filter checkout configurations by
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, plan_id: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list checkout configurations for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param plan_id [String, nil] The ID of the plan to filter checkout configurations by
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
