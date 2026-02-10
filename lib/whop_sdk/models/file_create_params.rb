# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Files#create
    class FileCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute filename
      #   The name of the file including its extension (e.g., "photo.png" or
      #   "document.pdf").
      #
      #   @return [String]
      required :filename, String

      # @!method initialize(filename:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::FileCreateParams} for more details.
      #
      #   @param filename [String] The name of the file including its extension (e.g., "photo.png" or "document.pdf
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
