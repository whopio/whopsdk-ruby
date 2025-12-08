# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#create
    class ExperienceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute app_id
      #   The ID of the app to create the experience for
      #
      #   @return [String]
      required :app_id, String

      # @!attribute company_id
      #   The ID of the company to create the experience for
      #
      #   @return [String]
      required :company_id, String

      # @!attribute is_public
      #   Whether the experience is publicly accessible
      #
      #   @return [Boolean, nil]
      optional :is_public, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute name
      #   The name of the experience
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute section_id
      #   The ID of the section to create the experience in
      #
      #   @return [String, nil]
      optional :section_id, String, nil?: true

      # @!method initialize(app_id:, company_id:, is_public: nil, name: nil, section_id: nil, request_options: {})
      #   @param app_id [String] The ID of the app to create the experience for
      #
      #   @param company_id [String] The ID of the company to create the experience for
      #
      #   @param is_public [Boolean, nil] Whether the experience is publicly accessible
      #
      #   @param name [String, nil] The name of the experience
      #
      #   @param section_id [String, nil] The ID of the section to create the experience in
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
