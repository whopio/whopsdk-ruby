# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Experiences#list
    class ExperienceListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to filter experiences by
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute app_id
      #   The ID of the app to filter experiences by
      #
      #   @return [String, nil]
      optional :app_id, String, nil?: true

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

      # @!attribute product_id
      #   The ID of the product to filter experiences by
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!method initialize(company_id:, after: nil, app_id: nil, before: nil, first: nil, last: nil, product_id: nil, request_options: {})
      #   @param company_id [String] The ID of the company to filter experiences by
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param app_id [String, nil] The ID of the app to filter experiences by
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param product_id [String, nil] The ID of the product to filter experiences by
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
