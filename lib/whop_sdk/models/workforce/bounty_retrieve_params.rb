# frozen_string_literal: true

module WhopSDK
  module Models
    module Workforce
      # @see WhopSDK::Resources::Workforce::Bounties#retrieve
      class BountyRetrieveParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:, request_options: {})
        #   @param id [String]
        #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
