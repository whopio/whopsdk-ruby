# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CourseLessonInteractions#retrieve
    class CourseLessonInteractionRetrieveParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute query_id
      #
      #   @return [String]
      required :query_id, String

      # @!method initialize(query_id:, request_options: {})
      #   @param query_id [String]
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
