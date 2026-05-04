# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Stats#describe
    class StatDescribeParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   Scope query to a specific company.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute resource
      #   Resource path using : as separator (e.g., 'receipts', 'payments:membership',
      #   'receipts:gross_revenue').
      #
      #   @return [String, nil]
      optional :resource, String, nil?: true

      # @!attribute user_id
      #   Scope query to a specific user.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(company_id: nil, resource: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::StatDescribeParams} for more details.
      #
      #   @param company_id [String, nil] Scope query to a specific company.
      #
      #   @param resource [String, nil] Resource path using : as separator (e.g., 'receipts', 'payments:membership', 're
      #
      #   @param user_id [String, nil] Scope query to a specific user.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
