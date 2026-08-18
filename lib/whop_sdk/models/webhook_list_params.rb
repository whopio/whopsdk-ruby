# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#list
    class WebhookListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list webhooks for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute app_id
      #   Only return webhooks attached to this app. Omit to list the company's own
      #   webhooks.
      #
      #   @return [String, nil]
      optional :app_id, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!method initialize(company_id:, after: nil, app_id: nil, before: nil, first: nil, last: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WebhookListParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to list webhooks for.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param app_id [String] Only return webhooks attached to this app. Omit to list the company's own webhoo
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
