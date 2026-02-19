# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Leads#create
    class LeadCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to create the lead for, starting with
      #   'biz\_'.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute metadata
      #   A JSON object of custom metadata to attach to the lead for tracking purposes.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute product_id
      #   The unique identifier of the product the lead is interested in, starting with
      #   'prod\_'.
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute referrer
      #   The referral URL that brought the lead to the company, such as
      #   'https://example.com/landing'.
      #
      #   @return [String, nil]
      optional :referrer, String, nil?: true

      # @!attribute user_id
      #   The unique identifier of the user to record as the lead. If authenticated as a
      #   user, that user is used automatically.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(company_id:, metadata: nil, product_id: nil, referrer: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::LeadCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to create the lead for, starting with
      #   'biz\_
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] A JSON object of custom metadata to attach to the lead for tracking purposes.
      #
      #   @param product_id [String, nil] The unique identifier of the product the lead is interested in, starting with 'p
      #
      #   @param referrer [String, nil] The referral URL that brought the lead to the company, such as 'https://example.
      #
      #   @param user_id [String, nil] The unique identifier of the user to record as the lead. If authenticated as a u
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
