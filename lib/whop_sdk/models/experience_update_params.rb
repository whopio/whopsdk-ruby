# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#update
    class ExperienceUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute access_level
      #   The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      #
      #   @return [Symbol, WhopSDK::Models::ExperienceUpdateParams::AccessLevel, nil]
      optional :access_level, enum: -> { WhopSDK::ExperienceUpdateParams::AccessLevel }, nil?: true

      # @!attribute is_public
      #   Whether the experience is publicly accessible without a membership.
      #
      #   @return [Boolean, nil]
      optional :is_public, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute logo
      #   A logo image displayed alongside the experience name.
      #
      #   @return [WhopSDK::Models::ExperienceUpdateParams::Logo, nil]
      optional :logo, -> { WhopSDK::ExperienceUpdateParams::Logo }, nil?: true

      # @!attribute name
      #   The display name of the experience.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute order
      #   The position of the experience within its section for display ordering.
      #
      #   @return [String, nil]
      optional :order, String, nil?: true

      # @!attribute section_id
      #   The unique identifier of the section to move the experience into.
      #
      #   @return [String, nil]
      optional :section_id, String, nil?: true

      # @!method initialize(access_level: nil, is_public: nil, logo: nil, name: nil, order: nil, section_id: nil, request_options: {})
      #   @param access_level [Symbol, WhopSDK::Models::ExperienceUpdateParams::AccessLevel, nil] The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      #
      #   @param is_public [Boolean, nil] Whether the experience is publicly accessible without a membership.
      #
      #   @param logo [WhopSDK::Models::ExperienceUpdateParams::Logo, nil] A logo image displayed alongside the experience name.
      #
      #   @param name [String, nil] The display name of the experience.
      #
      #   @param order [String, nil] The position of the experience within its section for display ordering.
      #
      #   @param section_id [String, nil] The unique identifier of the section to move the experience into.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      module AccessLevel
        extend WhopSDK::Internal::Type::Enum

        PUBLIC = :public
        PRIVATE = :private

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
