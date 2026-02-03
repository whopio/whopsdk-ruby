# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmChannels#update
    class DmChannelUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute custom_name
      #   The custom name for the DM channel
      #
      #   @return [String, nil]
      optional :custom_name, String, nil?: true

      # @!method initialize(custom_name: nil, request_options: {})
      #   @param custom_name [String, nil] The custom name for the DM channel
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
