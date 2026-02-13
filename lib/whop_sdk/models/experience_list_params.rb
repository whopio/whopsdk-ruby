# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#list
    class ExperienceListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list experiences for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute app_id
      #   Filter to only experiences powered by this app identifier.
      #
      #   @return [String, nil]
      optional :app_id, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute created_after
      #   Only return experiences created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return experiences created before this timestamp.
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

      # @!attribute product_id
      #   Filter to only experiences attached to this product identifier.
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!method initialize(company_id:, after: nil, app_id: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, product_id: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list experiences for.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param app_id [String, nil] Filter to only experiences powered by this app identifier.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time, nil] Only return experiences created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return experiences created before this timestamp.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param product_id [String, nil] Filter to only experiences attached to this product identifier.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
