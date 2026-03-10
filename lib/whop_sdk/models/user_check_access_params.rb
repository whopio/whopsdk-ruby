# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#check_access
    class UserCheckAccessParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute resource_id
      #
      #   @return [String]
      required :resource_id, String

      # @!method initialize(id:, resource_id:, request_options: {})
      #   @param id [String]
      #   @param resource_id [String]
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
