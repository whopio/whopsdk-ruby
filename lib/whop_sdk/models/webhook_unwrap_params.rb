# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#unwrap
    class WebhookUnwrapParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
