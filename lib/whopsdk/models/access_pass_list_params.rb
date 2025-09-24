# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::AccessPasses#list
    class AccessPassListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to filter access passes by
      #
      #   @return [String]
      required :company_id, String

      # @!attribute access_pass_type
      #   The type of access passes to filter by
      #
      #   @return [Symbol, Whopsdk::Models::AccessPassListParams::AccessPassType, nil]
      optional :access_pass_type, enum: -> { Whopsdk::AccessPassListParams::AccessPassType }, nil?: true

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

      # @!method initialize(company_id:, access_pass_type: nil, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #   @param company_id [String] The ID of the company to filter access passes by
      #
      #   @param access_pass_type [Symbol, Whopsdk::Models::AccessPassListParams::AccessPassType, nil] The type of access passes to filter by
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The type of access passes to filter by
      module AccessPassType
        extend Whopsdk::Internal::Type::Enum

        REGULAR = :regular
        APP = :app
        EXPERIENCE_UPSELL = :experience_upsell
        API_ONLY = :api_only

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
