# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # @see WhopSDK::Resources::Affiliates::Overrides#retrieve
      class OverrideRetrieveParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute override_id
        #
        #   @return [String]
        required :override_id, String

        # @!method initialize(id:, override_id:, request_options: {})
        #   @param id [String]
        #   @param override_id [String]
        #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
