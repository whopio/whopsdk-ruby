# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CourseLessonInteractions#list
    class CourseLessonInteractionListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute after
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute completed
      #
      #   @return [Boolean, nil]
      optional :completed, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!attribute course_id
      #
      #   @return [String, nil]
      optional :course_id, String, nil?: true

      # @!attribute first
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute lesson_id
      #
      #   @return [String, nil]
      optional :lesson_id, String, nil?: true

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(after: nil, before: nil, completed: nil, course_id: nil, first: nil, last: nil, lesson_id: nil, user_id: nil, request_options: {})
      #   @param after [String, nil]
      #   @param before [String, nil]
      #   @param completed [Boolean, nil]
      #   @param course_id [String, nil]
      #   @param first [Integer, nil]
      #   @param last [Integer, nil]
      #   @param lesson_id [String, nil]
      #   @param user_id [String, nil]
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
