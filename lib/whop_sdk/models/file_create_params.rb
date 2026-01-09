# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Files#create
    class FileCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute filename
      #   The filename of the file
      #
      #   @return [String]
      required :filename, String

      # @!method initialize(filename:, request_options: {})
      #   @param filename [String] The filename of the file
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
