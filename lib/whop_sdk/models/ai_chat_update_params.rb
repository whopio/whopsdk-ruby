# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AIChats#update
    class AIChatUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute current_company_id
      #   The unique identifier of the company to set as context for the AI chat (e.g.,
      #   "biz_XXXXX").
      #
      #   @return [String, nil]
      optional :current_company_id, String, nil?: true

      # @!attribute title
      #   The new display title for the AI chat thread (e.g., "Help with billing").
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(current_company_id: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AIChatUpdateParams} for more details.
      #
      #   @param current_company_id [String, nil] The unique identifier of the company to set as context for the AI chat (e.g., "b
      #
      #   @param title [String, nil] The new display title for the AI chat thread (e.g., "Help with billing").
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
