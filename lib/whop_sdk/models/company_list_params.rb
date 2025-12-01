# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#list
    class CompanyListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute parent_company_id
      #   The ID of the parent company to list sub companies for
      #
      #   @return [String]
      required :parent_company_id, String

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

      # @!method initialize(parent_company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #   @param parent_company_id [String] The ID of the parent company to list sub companies for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
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
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
