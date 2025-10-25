# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#duplicate
    class ExperienceDuplicateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute name
      #   The name of the new experience
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(name: nil, request_options: {})
      #   @param name [String, nil] The name of the new experience
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
