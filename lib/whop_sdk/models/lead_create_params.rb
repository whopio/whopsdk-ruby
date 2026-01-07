# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Leads#create
    class LeadCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to create a lead for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute metadata
      #   Custom metadata for the lead.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute product_id
      #   The ID of the product the lead is interested in.
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute referrer
      #   The url referrer of the lead, if any.
      #
      #   @return [String, nil]
      optional :referrer, String, nil?: true

      # @!attribute user_id
      #   The ID of the user to create a lead for. If the request is made by a user, that
      #   user will be used.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(company_id:, metadata: nil, product_id: nil, referrer: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::LeadCreateParams} for more details.
      #
      #   @param company_id [String] The ID of the company to create a lead for.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata for the lead.
      #
      #   @param product_id [String, nil] The ID of the product the lead is interested in.
      #
      #   @param referrer [String, nil] The url referrer of the lead, if any.
      #
      #   @param user_id [String, nil] The ID of the user to create a lead for. If the request is made by a user, that
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
