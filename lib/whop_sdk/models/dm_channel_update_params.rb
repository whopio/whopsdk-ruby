# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmChannels#update
    class DmChannelUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute custom_name
      #   A new custom display name for the DM channel. For example, 'Project Discussion'.
      #
      #   @return [String, nil]
      optional :custom_name, String, nil?: true

      # @!method initialize(custom_name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DmChannelUpdateParams} for more details.
      #
      #   @param custom_name [String, nil] A new custom display name for the DM channel. For example, 'Project Discussion'.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
