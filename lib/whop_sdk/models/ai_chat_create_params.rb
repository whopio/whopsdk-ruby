# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AIChats#create
    class AIChatCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute title
      #   The title of the AI chat
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(title: nil, request_options: {})
      #   @param title [String, nil] The title of the AI chat
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
