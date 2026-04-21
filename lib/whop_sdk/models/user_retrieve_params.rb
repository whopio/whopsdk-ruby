# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#retrieve
    class UserRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute company_id
      #   When provided, returns the user's company-specific profile overrides (name,
      #   profile picture) instead of their global profile.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, company_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::UserRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param company_id [String, nil] When provided, returns the user's company-specific profile overrides (name, prof
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
