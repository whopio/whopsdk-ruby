# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#duplicate
    class ExperienceDuplicateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute name
      #   The display name for the duplicated experience. Defaults to the original
      #   experience's name.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ExperienceDuplicateParams} for more details.
      #
      #   @param name [String, nil] The display name for the duplicated experience. Defaults to the original experie
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
