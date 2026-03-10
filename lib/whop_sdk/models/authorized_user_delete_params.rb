# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AuthorizedUsers#delete
    class AuthorizedUserDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute company_id
      #   The ID of the company the authorized user belongs to. Optional if the authorized
      #   user ID is provided.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, company_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AuthorizedUserDeleteParams} for more details.
      #
      #   @param id [String]
      #
      #   @param company_id [String, nil] The ID of the company the authorized user belongs to. Optional if the authorized
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
