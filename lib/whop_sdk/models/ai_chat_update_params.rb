# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AIChats#update
    class AIChatUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute current_company_id
      #   The ID of the company to set as the current company in context for the AI chat
      #
      #   @return [String, nil]
      optional :current_company_id, String, nil?: true

      # @!attribute title
      #   The new title for the AI chat
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(current_company_id: nil, title: nil, request_options: {})
      #   @param current_company_id [String, nil] The ID of the company to set as the current company in context for the AI chat
      #
      #   @param title [String, nil] The new title for the AI chat
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
