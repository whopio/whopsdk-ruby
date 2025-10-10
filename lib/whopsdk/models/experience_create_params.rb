# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Experiences#create
    class ExperienceCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

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

      # @!method initialize(app_id:, company_id:, name: nil, section_id: nil, request_options: {})
      #   @param app_id [String] The ID of the app to create the experience for
      #
      #   @param company_id [String] The ID of the company to create the experience for
      #
      #   @param name [String, nil] The name of the experience
      #
      #   @param section_id [String, nil] The ID of the section to create the experience in
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
