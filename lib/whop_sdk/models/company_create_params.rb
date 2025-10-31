# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#create
    class CompanyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute email
      #   The email of the user who the company will belong to.
      #
      #   @return [String]
      required :email, String

      # @!attribute parent_company_id
      #   The company ID of the platform creating this company.
      #
      #   @return [String]
      required :parent_company_id, String

      # @!attribute title
      #   The name of the company being created.
      #
      #   @return [String]
      required :title, String

      # @!attribute metadata
      #   Additional metadata for the account
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!method initialize(email:, parent_company_id:, title:, metadata: nil, request_options: {})
      #   @param email [String] The email of the user who the company will belong to.
      #
      #   @param parent_company_id [String] The company ID of the platform creating this company.
      #
      #   @param title [String] The name of the company being created.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Additional metadata for the account
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
