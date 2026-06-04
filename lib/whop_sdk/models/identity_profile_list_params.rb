# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::IdentityProfiles#list
    class IdentityProfileListParams < WhopSDK::Internal::Type::BaseModel
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
      #   The unique identifier of the company to filter to. When omitted, returns IPs
      #   across all ledgers the actor can read.
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

      # @!attribute profile_type
      #   The kind of identity profile (individual vs business).
      #
      #   @return [Symbol, WhopSDK::Models::IdentityProfileKind, nil]
      optional :profile_type, enum: -> { WhopSDK::IdentityProfileKind }, nil?: true

      # @!attribute status
      #   Derived verification status for an identity profile.
      #
      #   @return [Symbol, WhopSDK::Models::IdentityProfileStatus, nil]
      optional :status, enum: -> { WhopSDK::IdentityProfileStatus }, nil?: true

      # @!method initialize(after: nil, before: nil, company_id: nil, first: nil, last: nil, profile_type: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::IdentityProfileListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String, nil] The unique identifier of the company to filter to. When omitted, returns IPs acr
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param profile_type [Symbol, WhopSDK::Models::IdentityProfileKind, nil] The kind of identity profile (individual vs business).
      #
      #   @param status [Symbol, WhopSDK::Models::IdentityProfileStatus, nil] Derived verification status for an identity profile.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
