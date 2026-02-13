# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#create
    class ExperienceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute app_id
      #   The unique identifier of the app that powers this experience.
      #
      #   @return [String]
      required :app_id, String

      # @!attribute company_id
      #   The unique identifier of the company to create this experience for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute is_public
      #   Whether the experience is publicly accessible without a membership.
      #
      #   @return [Boolean, nil]
      optional :is_public, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute logo
      #   A logo image displayed alongside the experience name.
      #
      #   @return [WhopSDK::Models::ExperienceCreateParams::Logo, nil]
      optional :logo, -> { WhopSDK::ExperienceCreateParams::Logo }, nil?: true

      # @!attribute name
      #   The display name of the experience. Defaults to the app's name if not provided.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute section_id
      #   The unique identifier of the section to place the experience in.
      #
      #   @return [String, nil]
      optional :section_id, String, nil?: true

      # @!method initialize(app_id:, company_id:, is_public: nil, logo: nil, name: nil, section_id: nil, request_options: {})
      #   @param app_id [String] The unique identifier of the app that powers this experience.
      #
      #   @param company_id [String] The unique identifier of the company to create this experience for.
      #
      #   @param is_public [Boolean, nil] Whether the experience is publicly accessible without a membership.
      #
      #   @param logo [WhopSDK::Models::ExperienceCreateParams::Logo, nil] A logo image displayed alongside the experience name.
      #
      #   @param name [String, nil] The display name of the experience. Defaults to the app's name if not provided.
      #
      #   @param section_id [String, nil] The unique identifier of the section to place the experience in.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Logo < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   A logo image displayed alongside the experience name.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
