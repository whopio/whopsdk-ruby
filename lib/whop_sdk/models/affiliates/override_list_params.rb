# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # @see WhopSDK::Resources::Affiliates::Overrides#list
      class OverrideListParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

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

        # @!attribute override_type
        #   Filter by override type (standard or rev_share).
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliateOverrideRoles, nil]
        optional :override_type, enum: -> { WhopSDK::Affiliates::AffiliateOverrideRoles }

        # @!method initialize(id:, after: nil, before: nil, first: nil, last: nil, override_type: nil, request_options: {})
        #   @param id [String]
        #
        #   @param after [String] Returns the elements in the list that come after the specified cursor.
        #
        #   @param before [String] Returns the elements in the list that come before the specified cursor.
        #
        #   @param first [Integer] Returns the first _n_ elements from the list.
        #
        #   @param last [Integer] Returns the last _n_ elements from the list.
        #
        #   @param override_type [Symbol, WhopSDK::Models::Affiliates::AffiliateOverrideRoles] Filter by override type (standard or rev_share).
        #
        #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
